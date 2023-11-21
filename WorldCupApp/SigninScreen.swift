//
//  SigninScreen.swift
//  SwiftUITraining
//
//  Created by Prince Jeetan on 20/11/2023.
//

import SwiftUI

struct SigninScreen: View {
    
    @State var username:String = ""
    @State var password:String = ""

    
    var body: some View {
        
        VStack(spacing:-20){
            Image("fifa-logo")
                .resizable()
                .scaledToFit()
                .overlay{
                    Circle()
                        .fill(.white.opacity(0.05))
                        .padding(25)
                }
                            
            VStack(alignment: .leading){
                Text("LOGIN")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(30)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(Color("title-color"))
                    .background(.white)

                VStack(alignment:.leading){
                    
                    // Username TextField
                    
                    Text("User Name")
                    HStack(spacing:0){
                        SecureField("Enter Username", text: $password)
                        Image(systemName: "person")
                            .foregroundStyle(.gray)
                    }
                    .padding()
                    .border(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 4.0))
                    
                    .padding(.bottom,20)
                    
                    
                    // password TextField
                    
                    Text("Password")
                    HStack(spacing:0){
                        SecureField("Enter Password", text: $password)
                        Image(systemName: "lock")
                            .foregroundStyle(.gray)
                    }
                    .padding()
                    .border(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 4.0))
                    
                    .padding(.bottom)
                    
                    
                    Button("LOGIN", action: login)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color([#colorLiteral(red: 0.2078431249, green: 0.2078431249, blue: 0.2078431249, alpha: 1)][0]))
                    
                }
                .font(.subheadline)
                .fontWeight(.bold)
                .padding()
//                .background(Color.gray)
                HStack{
                    Text("Don't have an ccount?")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    NavigationLink("Register", destination: SignupScreen())
                        .foregroundStyle(Color("title-color"))
                }
                .frame(maxWidth: .infinity)
                
                Spacer()
            }
            .frame(maxWidth: .infinity,maxHeight:.infinity)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SigninScreen()
}


// MARK: FUNCTIONS
extension SigninScreen{
    
    func login(){
        
    }
    
    
}
