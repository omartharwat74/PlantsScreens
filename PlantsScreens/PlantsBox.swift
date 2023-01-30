//
//  Box.swift
//  screenplant2
//
//  Created by Omar Tharwat on 13/12/2023.
//

import SwiftUI

struct BoxView : View {
    
    @Binding var selectedBtn: Int  // 3
    
    let box : PlantsBox
    
    var body: some View {
        VStack {
            Button {
                self.selectedBtn = self.box.id
                
            } label: {
                Image(systemName: box.imageURL)
                    .foregroundColor(self.selectedBtn == self.box.id ? Color(hex: "e5d9b6") : .gray)
                    .imageScale(.large)
                // width and height of box
            } .frame(width:self.selectedBtn == self.box.id ? 85 :65 ,height: self.selectedBtn == self.box.id ?70 :65)
                .background(self.selectedBtn == self.box.id ? Color(hex: "5f8d4e") : Color.clear)
                .cornerRadius(12)
            Text(box.title)
                .font(.subheadline)
                .fontWeight(self.selectedBtn == self.box.id ? .bold : .medium)
                .foregroundColor(self.selectedBtn == self.box.id ? .black : .gray)
        }
    }
    
    
}

