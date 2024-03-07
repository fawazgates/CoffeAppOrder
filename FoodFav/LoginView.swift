//
//  Login.swift
//  FoodFav
//
//  Created by User on 07/03/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Text("Order Your\nFavorite Coffee")
                .font(.system(size: 30))
                .foregroundColor(Color(.systemBrown))
                .multilineTextAlignment(.center)
            
            Text("Sign up to get your coffee\nbetter than before")
                .font(.system(size: 20))
                .foregroundColor(Color(.systemGray3))
                .multilineTextAlignment(.center)
            
            Image("delevery")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .padding()
            
            Button {
                print("New Account")
            } label: {
                ZStack {
                    Text("Create New Account")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(.brown)
                        .cornerRadius(30)
                }
            }
                    Button {
                        print("Let's start it")
                    } label: {
                        ZStack {
                        Text("Sign In")
                                .font(.subheadline)
                                .padding(12)
                                .padding(.horizontal, 24)
                                .foregroundColor(.black)
                                .padding(.top)
                        }
                    }
            Spacer()
            Divider()
                .padding(10)
            Text("Term & Condition")
                .font(.caption)
                .foregroundColor(Color(.systemGray))
                }
            }
        }

#Preview {
    LoginView()
}
