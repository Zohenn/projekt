//
//  ContentView.swift
//  projekt
//
//  Created by Agnieszka Fortuna on 10/05/2022.
//

import SwiftUI
import CoreData

struct Flower: Hashable {
    var name: String
    var species: String
    var image: String
}

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    var flowers: [Flower] = [
        Flower(name: "Storczyk 1", species: "Storczyk", image: "storczyk1"),
        Flower(name: "Storczyk 2", species: "Storczyk", image: "storczyk2"),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(flowers, id: \.self) { flower in
                    NavigationLink(
                        destination: FlowerView(flower: flower),
                        label: {
                            HStack(alignment: .top){
                                Image(flower.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80, height: 80, alignment: .top)
                                VStack(alignment: .leading) {
                                    Text(flower.name).font(.headline)
                                    Text(flower.species).font(.caption).foregroundColor(.secondary)
                                    Spacer()
                                    Text("Następne podlanie: 24.05.2022")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                                
                                
                            }
                        })
                }
            }
            .navigationBarItems(trailing:
                HStack {
                    #if os(iOS)
                    EditButton()
                    #endif
                    
                    Button(action: addItem) {
                        Image(systemName: "plus")
                    }
                }
            ) .navigationBarTitle("Kwiatki")
        }
    }
    
    private func addItem() {
//        withAnimation {
//            let newItem = Item(context: viewContext)
//            newItem.timestamp = Date()
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
    }

    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            offsets.map { items[$0] }.forEach(viewContext.delete)
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .environment(
//            \.managedObjectContext,
//            PersistenceController.preview.container.viewContext
//        )
    }
}
