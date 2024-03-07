//
//  HomePageView.swift
//  FoodFav
//
//  Created by User on 07/03/24.
//

import SwiftUI

struct HomePageView: View {
    @State private var showHomePage = false
    
    var body: some View {
        return Group {
            if showHomePage {
                HomeView()
            } else {
                VStack {
                    Image("cofee")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                        .padding()
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            
                            Text("10K Store")
                                .font(.footnote)
                                .foregroundColor(Color(.systemGray3))
                            
                            Text("Order Your\nFavorite Coffee")
                                .font(.system(size: 30))
                                .foregroundColor(Color(.systemBrown))
                            
                            Button {
                                self.showHomePage = true
                            } label: {
                                ZStack {
                                    Text("Explore Now")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .frame(width: 352, height: 44)
                                        .background(.brown)
                                        .cornerRadius(8)
                                }
                            }
                            .padding(.top, 30)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomePageView()
}
