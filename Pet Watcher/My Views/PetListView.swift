//
//  PetListView.swift
//  PetListView
//
//  Created by Ruben Glapa on 8/12/21.
//

import SwiftUI

struct PetListView: View {
    @ObservedObject var petData = PetData()
    @State private var shouldShowPurple = false
    var body: some View {
        Text("Toror")
        .navigationViewStyle(.stack)
    }
}



struct PetList: View {
    @State var testInt = 0
    @State var petData: PetData
    
    var body: some View {
        List {
            Text("Test")
        }.navigationBarHidden(true)
    }
    func hideKeyboardTest() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct PetListView_Previews: PreviewProvider {
    static var previews: some View {
        PetListView()
    }
}
