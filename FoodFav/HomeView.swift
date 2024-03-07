//
//  HomeView.swift
//  FoodFav
//
//  Created by User on 07/03/24.
//

import SwiftUI

struct HomeView: View {
    @State private var searchCoffee: String = ""
    @State private var showDetailPage = false
    
    var body: some View {
        
        return Group {
            if showDetailPage {
                DetailPageView()
            } else {
                ScrollView {
                    VStack(alignment: .leading, spacing: 10) {
                        HStack() {
                            Image("fawaz")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .padding()
                            Spacer()
                            VStack(alignment: .leading) {
                                Text("fawaz")
                                    .font(.caption)
                                    .foregroundColor(Color(.systemGray3))
                                    .foregroundColor(.blue)
                                Text("Fawaz Gates")
                                    .font(.caption)
                            }
                            .padding(.trailing)
                        }
                        VStack(alignment: .center){
                            Text("Mau minum kopi apa\nhari ini?..")
                                .font(.system(size: 22))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 66, maxHeight: 66)
                        .padding(.top, 30)
                        .padding(.bottom, 24)
                        
                        HStack {
                            TextField("Search favorite kopi kamu disini", text: $searchCoffee)
                                .padding(.leading, 24)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .padding(.horizontal)
                        
                        VStack(alignment: .leading) {
                            Text("Kategori")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding()
                            
                            ScrollView(.horizontal) {
                                HStack {
                                    HStack {
                                        Image("kopi")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 50, height: 50)
                                        
                                        Text("Kopi susu")
                                            .font(.system(size: 11))
                                            .foregroundColor(.black)
                                            .padding(.trailing, 18)
                                    }
                                    .background(Color(.systemGray6))
                                    .cornerRadius(50)
                                    
                                    HStack {
                                        Image("kopi1")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 50, height: 50)
                                        
                                        Text("Kopi hitam")
                                            .font(.system(size: 11))
                                            .foregroundColor(.black)
                                            .padding(.trailing, 18)
                                    }
                                    .background(Color(.systemGray6))
                                    .cornerRadius(50)
                                    HStack {
                                        Image("snack")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 50, height: 50)
                                        
                                        Text("Cemilan")
                                            .font(.system(size: 11))
                                            .foregroundColor(.black)
                                            .padding(.trailing, 18)
                                    }
                                    .background(Color(.systemGray6))
                                    .cornerRadius(50)
                                }
                            }
                            .padding(.top, 1)
                            
                            VStack(alignment: .leading) {
                                Text("Penjualan Tebaik")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .padding()
                                
                                HStack(spacing: 1) {
                                    Image("kopi")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 50)
                                    VStack {
                                        Text("Kopi susu")
                                            .font(.system(size: 18))
                                            .foregroundColor(.black)
                                            .padding(.trailing, 18)
                                        Text("kopi susu enak")
                                            .font(.system(size: 11))
                                            .foregroundColor(Color(.systemGray4))
                                            .padding(.trailing, 18)
                                    }
                                    .padding(.leading, 16)
                                    
                                    Spacer()
                                    
                                    HStack {
                                        Text("5.0")
                                            .font(.caption)
                                            .foregroundColor(.black)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.yellow)
                                    }
                                    .padding()
                                    .onTapGesture {
                                        self.showDetailPage = true
                                    }
                                }
                                Divider()
                                    .padding()
                                HStack(spacing: 1) {
                                    Image("kopi1")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 50)
                                    VStack {
                                        Text("Kopi pahit")
                                            .font(.system(size: 18))
                                            .foregroundColor(.black)
                                            .padding(.trailing, 18)
                                        Text("kopi pahit melek")
                                            .font(.system(size: 11))
                                            .foregroundColor(Color(.systemGray4))
                                            .padding(.trailing, 18)
                                    }
                                    .padding(.leading, 16)
                                    
                                    Spacer()
                                    
                                    HStack {
                                        Text("5.0")
                                            .font(.caption)
                                            .foregroundColor(.black)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.yellow)
                                    }
                                    .padding()
                                    
                                }
                                Divider()
                                    .padding()
                                HStack(spacing: 1) {
                                    Image("snack")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 50)
                                    VStack {
                                        Text("Snack enak")
                                            .font(.system(size: 18))
                                            .foregroundColor(.black)
                                            .padding(.trailing, 18)
                                        Text("makanan ringan")
                                            .font(.system(size: 11))
                                            .foregroundColor(Color(.systemGray4))
                                            .padding(.trailing, 18)
                                    }
                                    .padding(.leading, 16)
                                    
                                    Spacer()
                                    
                                    HStack {
                                        Text("5.0")
                                            .font(.caption)
                                            .foregroundColor(.black)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.yellow)
                                    }
                                    .padding()
                                }
                            }
                            .padding(.top)
                        }
                        .padding(.horizontal, 20)
                    }
                }
            }
        }
    }
}
#Preview {
    HomeView()
}
