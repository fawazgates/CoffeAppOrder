//
//  DetailPageView.swift
//  FoodFav
//
//  Created by User on 07/03/24.
//

import SwiftUI

struct DetailPageView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                Image("kopi")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 300)
                
                HStack(spacing: 0.0){
                    VStack(alignment: .leading, spacing: 0.0){
                        Text("Kopi Susu")
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .padding(.bottom, 6.0)
                        Text("Khas Bali")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    HStack(spacing: 0.0){
                        Text("5.0")
                            .font(.caption2)
                            .foregroundColor(.black)
                            .padding(.trailing, 4)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                }
                .padding()
            }
            ZStack {
                Text("Kopi susu adalah minuman kopi yang terdiri dari campuran kopi dan susu. Minuman ini populer di berbagai negara, terutama di Asia Tenggara seperti Indonesia, Malaysia, dan Singapura. Kopi susu memiliki rasa yang unik karena kombinasi antara kekentalan dan kelezatan kopi dengan kelembutan dan manisnya susu.")
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .lineSpacing(5)
            }
            .padding()
                
            VStack(alignment: .leading, spacing: 5){
                Text("Bundle")
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .padding(.bottom, 12.0)
                HStack(spacing: 0.0){
                    Image("kopi1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 50)
                    Image("snack")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 50)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            HStack(spacing: 0){
                VStack(alignment: .leading, spacing: 0){
                    Text("$808.00")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .padding(.bottom, 6.0)
                    Text("/porsi")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemGray))
                }
                Spacer()
                Button(action: {
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .frame(width: 110, height: 50)
                            .foregroundColor(Color(.systemOrange))
                        Text("Order Now")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                })
                
            }
            .padding(.trailing)
            .padding(.leading)
        }
    }
}

#Preview {
    DetailPageView()
}
