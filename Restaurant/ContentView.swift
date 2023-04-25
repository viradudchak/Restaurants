//
//  ContentView.swift
//  Restaurant
//
//  Created by Vera Dudchak on 19/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var foodIsShowing: Bool = false
    @State private var drinksAreShowing: Bool = false
    @State private var colorIsShowing: Bool = false
    
    var body: some View {
        NavigationStack(root: {
            Homapage(
                onFoodTap: {
                    foodIsShowing = true
                },
                onDrinksTap: {
                    drinksAreShowing = true
                },
                onCircleTap:{
                    colorIsShowing = true
                }
            )
            .navigationDestination(isPresented: $colorIsShowing, destination: {
                Color.green
            })
            .navigationDestination(isPresented: $foodIsShowing, destination: {
                Text("Food")
            })
            .navigationDestination(isPresented: $drinksAreShowing, destination: {
                Text("Drinks")
            })

        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
