//
//  ContentView.swift
//  CreateRectangle
//
//  Created by Ramill Ibragimov on 08.03.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var rect1 = false
    @State private var rect2 = false
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(self.rect1 ? Color.black : Color.gray)
                .frame(width: self.rect1 ? 100 : 50, height: self.rect1 ? 100 : 50)
                .cornerRadius(self.rect1 ? 50 : 0)
                .onTapGesture {
                    self.rect1.toggle()
            }.animation(.default)
            
            RoundedRectangle(cornerRadius: self.rect2 ? 0.0 : 15.0)
                .stroke(self.rect2 ? Color.green : Color.red, lineWidth: self.rect2 ? 2.0 : 5.0)
                .frame(width: self.rect2 ? 100 : 50, height: self.rect2 ? 100 : 50)
                .onTapGesture {
                    self.rect2.toggle()
            }.animation(.default)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
