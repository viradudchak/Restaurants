//
//  Homapage.swift
//  Restaurant
//
//  Created by Vera Dudchak on 25/04/23.
//

import SwiftUI

struct Homapage: View {
    
    let onFoodTap: () -> Void
    let onDrinksTap: () -> Void
    let onCircleTap: () -> Void

    @State private var circleDimension: Double = 230

    var body: some View {
        GeometryReader { proxy in
            ZStack {
                
                Color.clear
                
                VStack {
                    
                    Spacer()
                    
                    Color.black
                        .cornerRadius(60)
                        .aspectRatio(2.5, contentMode: .fit)
                        .padding()
//                        .frame(width: proxy.size.width * 0.9)
                        .overlay{
                            HStack {
                                Text("Food")
                                    .padding()
                                    .background(Color.white.cornerRadius(10))
                                    .onTapGesture {
                                        onFoodTap()
                                    }
                                Text("&")
                                    .foregroundColor(.white)
                                Text("Drinks")
                                    .padding()
                                    .background(Color.white.cornerRadius(10))
                                    .onTapGesture {
                                        onDrinksTap()
                                    }

                            }
                            .font(
                                .system(
                                    .largeTitle,
                                    design: .rounded,
                                    weight: .bold
                                )
                            )
                            .padding()
                        }
                    
                    Spacer()
                    
                    Circle()
                        .fill(.yellow)
                        .overlay {
                            Text("VD")
                                .font(
                                    .system(
                                        size: 100,
                                        weight: .bold,
                                        design: .rounded
                                    )
                                )
                        }
                        .frame(width: circleDimension, height: circleDimension)
                        .onTapGesture {
                            circleDimension /= 1.1
                            onCircleTap()
                        }
                    Spacer()

                    Text("Restaurant")
                        .font(.system(size: 50))

                    Spacer()

                }
            }
        }
    }
}

struct Homapage_Previews: PreviewProvider {
    static var previews: some View {
        Homapage(
            onFoodTap: {
                print("food")
            },
            onDrinksTap: {
                print("drinks")
            },
            onCircleTap: {
                print("circle")
            }
        )
    }
}
