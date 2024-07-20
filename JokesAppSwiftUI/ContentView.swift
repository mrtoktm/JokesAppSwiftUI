//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Mert Öktem on 20.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        
        NavigationView {
            List(jokesVM.jokes) { element in
                Text(element.joke)
            }
            .toolbar {
                Button(action: addJoke) {
                    Text("Get New Joke")
                }
            }
            .navigationTitle(Text("Jokes App"))
        }
    }
    
    func addJoke() {
        jokesVM.getJokes()
    }
}
    #Preview {
        ContentView()
    }

