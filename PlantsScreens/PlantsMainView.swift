//
//  MainView.swift
//  screenplant2
//
//  Created by Omar Tharwat on 12/12/2023.
//
import SwiftUI

struct PlantsMainView: View {
    var body: some View {
        
        TabView {
            
            PlantsPromote()
                .tabItem {
                    Image(systemName: "volume.3")
                }
            
            ContentView()
                .tabItem {
                    Image(systemName: "leaf")
                }
            
            PlantProfile()
                .tabItem {
                    Image(systemName: "person")
                }
            
        }
        .tint(Color(hex: "a4be7b"))        
    }
}


struct PlantMainView_Previews: PreviewProvider {
    static var previews: some View {
        PlantsMainView()
    }
}
