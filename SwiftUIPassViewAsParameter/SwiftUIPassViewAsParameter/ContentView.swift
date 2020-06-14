//
//  ContentView.swift
//  SwiftUIPassViewAsParameter
//
//  Created by ProgrammingWithSwift on 2020/06/14.
//  Copyright © 2020 ProgrammingWithSwift. All rights reserved.
//

import SwiftUI

struct BorderedView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack {
            self.content
        }.border(Color.red,
                 width: 2)
    }
}

struct ContentView: View {
    var body: some View {
        BorderedView {
            Text("Text view in CustomView")
            Button(action: {
                print("Button tapped")
            }, label: {
                Text("My button label")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
