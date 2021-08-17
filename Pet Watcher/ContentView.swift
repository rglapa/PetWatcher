//
//  ContentView.swift
//  Pet Watcher
//
//  Created by Ruben Glapa on 8/12/21.
//

import SwiftUI

struct Pet: Identifiable {
    init() {
        name = ""
        breed = ""
        age = ""
    }
    var id = UUID()
    var name: String
    var breed: String
    var age: String
    var image = UIImage()
}

class PetData: ObservableObject {
    @Published var petList = [Pet]()
}

struct ContentView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            PetListStruct(selectedTab: $selectedTab)
            PetAlertStruct(selectedTab: $selectedTab)
        }
    }
}

struct PetListStruct: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        NavigationView {
            PetListView()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
        .tabItem({
            Image(systemName: "list.bullet")
            Text("Pets")
        })
    }
}

struct PetAlertStruct: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        PetAlertView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(PetData())
    }
}
