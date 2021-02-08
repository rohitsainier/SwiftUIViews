//
//  ContentView.swift
//  Shared
//
//  Created by Rohit Saini on 05/12/20.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        Loader()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Loader: View{
    @State private var animate = false
    var body: some View{
        ZStack{
            Circle().fill(Color.orange.opacity(0.25)).frame(width:300,height:300).scaleEffect(animate ? 1 : 0)
            Circle().fill(Color.orange.opacity(0.35)).frame(width:200,height:200)
                .scaleEffect(animate ? 1 : 0)
            Circle().fill(Color.orange.opacity(0.45)).frame(width:100,height:100)
                .scaleEffect(animate ? 1 : 0)
            Circle().fill(Color.orange).frame(width:50,height:50)
                .scaleEffect(animate ? 1 : 0)
        }
        .onAppear{
            self.animate.toggle()
        }
        .animation(Animation.linear(duration: 1.5).repeatForever(autoreverses: false))
    }
}


