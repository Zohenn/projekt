//
//  FlowerView.swift
//  projekt
//
//  Created by Agnieszka Fortuna on 10/05/2022.
//

import SwiftUI

struct FlowerView: View {
    var flower: Flower
    
    var body: some View {
        VStack{
            Image(flower.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .padding(.top, 24)
            VStack(spacing: 16){
                HStack {
                    VStack(alignment: .leading){
                        Text(flower.name).font(.title)
                        Text(flower.species)
                            .font(.title3)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    Image(systemName: "trash")
                }
                VStack(alignment: .leading){
                    Text("Podlewanie").font(.headline)
                    Text("Podlewaj co dwa tygodnie")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.top, 16)
                HStack{
                    Image(systemName: "calendar")
                    VStack(alignment: .leading) {
                        Text("Następne podlanie")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("24.05.2022")
                    }
                    Spacer()
                    Image(systemName: "calendar")
                    VStack(alignment: .leading) {
                        Text("Ostatnie podlanie")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("10.05.2022")
                    }
                    Spacer()
                }
                Rectangle()
                    .background(Color.accentColor)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 1, maxHeight: 1)
            }.padding()
            
            Spacer()
        }.frame(minWidth: 0, maxWidth: .infinity, alignment: .top)
        .navigationBarTitle("Szczegóły kwiatka")
    }
}

struct FlowerView_Previews: PreviewProvider {
    static var previews: some View {
        FlowerView(flower: Flower(name: "Storczyk1", species: "Storczyk", image: "storczyk1"))
    }
}
