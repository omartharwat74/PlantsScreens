//
//  PlantsListCategory.swift
//  screenplant2
//
//  Created by Omar Tharwat on 12/12/2023.
//
import SwiftUI

struct PlantsListCategory: View {
    var table: [Table] = []
    
    init(table: [Table]) {
        self.table = table
    }
    
    var body: some View {
        
        List{
            ForEach(table , id: \.title) { table in
                ZStack{
                    NavigationLink("", destination: PlantsDetails(model: table))
                    HStack(spacing: 20) {
                        Spacer()
                        VStack{
                            Text(table.title)
                            Text(table.title)
                                .foregroundColor(Color.gray)
                        }
                        Image(table.imageURL).resizable().cornerRadius(12).frame(width: 79,height: 91)
                    }
                }
            }
        }
        .frame(height: 500)
        .listStyle(.plain)
    }
}
