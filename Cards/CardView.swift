import SwiftUI

struct CardView: View {
    var card: Card
    @State var isBackVisible: Bool = false
    @State private var rotation: Double = 0
    var animationDuration: Double = 0.5


    var body: some View {
        ZStack {
            Group {
                if !isBackVisible {
                    Text(card.front)
                        .opacity(!isBackVisible ? 1 : 0)
                } else {
                    Text(card.back)
                        .opacity(isBackVisible ? 1 : 0)
                        .scaleEffect(x: -1)
                }
            }
            .font(.system(size: 24))
            .bold()
            .multilineTextAlignment(.leading)


            Button {
                    withAnimation(.linear(duration: animationDuration)) {
                            rotation += isBackVisible ? 180 : -180
                            DispatchQueue.main.asyncAfter(deadline: .now() + (animationDuration / 2)) {
                                isBackVisible.toggle()
                            }
                        }
            } label: {
                Image(systemName: "arrow.left.arrow.right.circle.fill")
                    .font(.system(size: 36))
                    .foregroundColor(isBackVisible ? Color("backFlipColor") : Color("flipColor"))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: isBackVisible ? .bottomLeading : .bottomTrailing)
        }
        .padding()
        .frame(width: 300, height: 225)
        .background(isBackVisible ? Color.green : Color.orange)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 10, x: 0, y: 10)
        .padding()
        .rotation3DEffect(
            .degrees(rotation), axis: (x: 0, y: 1, z: 0)
        )
    }
}

#Preview {
    CardView(card: Card(front: "What is 7+7?", back: "14"))
}

#Preview {
    CardView(card: Card(front: "What is the airspeed velocity of an unladen swallow?", back: "African or European swallow?"))
}
