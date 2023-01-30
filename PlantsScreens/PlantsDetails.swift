//
//  PlantsDetails.swift
//  screenplant2
//
//  Created by Omar Tharwat on 16/12/2023.
//

import SwiftUI

struct PlantsDetails: View {
    
    // MARK: - Variables
    @State var didTapped  = true
    
    var model: Table?
    init(model: Table) {
        self.model = model
    }
    
    var body: some View {
        // MARK: - View
        NavigationView{
            VStack{
                Image(model?.imageURL ?? "")
                    .resizable()
                    .frame(width: 350)
                Spacer()
                ZStack{
                    Color.white
                        .cornerRadius(30, corners: [.topLeft, .topRight])
                        .shadow(color: .gray, radius: 2)
                        .frame(height: 280)
                    VStack {
                        HStack {
                            Spacer()
                                .padding(10)
                            Button {
                                didTapped.toggle()
                            } label: {
                                Text("العنايه به")
                                    .foregroundColor(didTapped ? Color.gray : Color.black)
                                    .fontWeight(.bold)
                            }
                            .padding()
                            Button {
                                didTapped.toggle()
                            } label: {
                                Text("نظره عامه")
                                    .foregroundColor(didTapped ? Color.black : Color.gray )
                                    .fontWeight(.bold)
                            }
                        }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 40))
                        ScrollView{
                            Text((didTapped ? model?.overView : model?.careWith) ?? "No Descrption Avilable")
                                    .padding([.leading, .trailing])
                                    .fixedSize(horizontal: false, vertical: true)
                        }
                    }.frame(height: 250)
                }
            }
        }
    }
}

struct PlantsDetails_Previews: PreviewProvider {
    static var previews: some View {
        let model: Table? = nil
        PlantsDetails(model: model ?? Table(title: "", imageURL: "", careWith: "", overView: ""))
    }
}


