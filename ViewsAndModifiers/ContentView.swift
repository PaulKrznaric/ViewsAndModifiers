//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Paul Krznaric on 2020-06-07.
//  Copyright © 2020 Krznarnetic. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello")
            .makeTitle()
    }
}

struct KustomModifier: ViewModifier{
    
    func body(content: Content) -> some View{
        content
            .font(.system(size:100))
            .foregroundColor(.blue)
    }
}

extension View{
    func makeTitle() -> some View {
        self.modifier(KustomModifier())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
