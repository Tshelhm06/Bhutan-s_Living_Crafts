import SwiftUI

struct CraftDetailView: View {
    let craft: Craft
    
    @Binding var isVisited: Bool
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                Image(craft.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 20)
                    )
                    .shadow(radius: 5)
                
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text(craft.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text(craft.englishName)
                            .font(.title3)
                            .foregroundStyle(.secondary)
                    }
                    
                    Spacer()
                }
                
                Divider()
                
                Text("About the Craft")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(craft.description)
                    .font(.body)
                    .lineSpacing(6)
                
                Divider()
                
                Button {
                    isVisited.toggle()
                } label: {
                    HStack {
                        Image(
                            systemName: isVisited
                            ? "checkmark.circle.fill"
                            : "circle"
                        )
                        
                        Text(
                            isVisited
                            ? "Visited"
                            : "Mark as Visited"
                        )
                        .fontWeight(.semibold)
                        
                        Spacer()
                    }
                    .foregroundStyle(
                        isVisited ? .green : .blue
                    )
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(
                                isVisited
                                ? Color.green.opacity(0.15)
                                : Color.blue.opacity(0.1)
                            )
                    )
                }
                .buttonStyle(.plain)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle(craft.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        CraftDetailView(
            craft: crafts[0],
            isVisited: .constant(false)
        )
    }
}
