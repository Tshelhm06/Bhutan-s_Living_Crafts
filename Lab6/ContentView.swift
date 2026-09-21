import SwiftUI

struct ContentView: View {
    
    // Stores which crafts have been visited
    @State private var visitedCraftIDs: Set<UUID> = []
    
    // Stores the search text
    @State private var searchText = ""
    
    // Filters crafts based on the search text
    var filteredCrafts: [Craft] {
        if searchText.isEmpty {
            return crafts
        }
        
        return crafts.filter { craft in
            craft.name.localizedCaseInsensitiveContains(searchText) ||
            craft.englishName.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(filteredCrafts) { craft in
                    
                    NavigationLink {
                        
                        // Pass the visited status to the detail view
                        CraftDetailView(
                            craft: craft,
                            isVisited: Binding(
                                get: {
                                    visitedCraftIDs.contains(craft.id)
                                },
                                set: { visited in
                                    if visited {
                                        visitedCraftIDs.insert(craft.id)
                                    } else {
                                        visitedCraftIDs.remove(craft.id)
                                    }
                                }
                            )
                        )
                        
                    } label: {
                        
                        HStack(spacing: 15) {
                            
                            // Craft image
                            Image(craft.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 12)
                                )
                                .clipped()
                            
                            // Craft names
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text(craft.name)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                
                                Text(craft.englishName)
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)
                            }
                            
                            Spacer()
                            
                            // Show green checkmark if visited
                            if visitedCraftIDs.contains(craft.id) {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundStyle(.green)
                                    .font(.title3)
                            }
                        }
                        .padding(.vertical, 6)
                    }
                }
            }
            .navigationTitle("Bhutan's Living Craft")
            .searchable(
                text: $searchText,
                prompt: "Search crafts"
            )
        }
    }
}

#Preview {
    ContentView()
}
