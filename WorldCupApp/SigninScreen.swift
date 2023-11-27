//
//  SigninScreen.swift
//  SwiftUITraining
//
//  Created by Prince Jeetan on 20/11/2023.
//

import SwiftUI

struct SigninScreen: View {
    
    // FIXME: this needs to implement LoginViewModel.
    #warning("No ViewModel Found")
    
    @State var username:String = ""
    @State var password:String = ""
    
    
    var body: some View {
        
        VStack(spacing:-20){
            
            logoImage
            
            VStack{
                Text("LOGIN")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(30)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.main)
                
                loginForm
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding()
                
                registerLabel
                
                Spacer()
            }
            .background(Color.white)
            .frame(maxWidth: .infinity,maxHeight:.infinity)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
        }
        .ignoresSafeArea()

    }
}
    
    #Preview {
        SigninScreen()
    }
    


    // MARK: COMPONENTS
    extension SigninScreen{
        
        var logoImage: some View{
            // FIXME: Extract Constants
            #warning("constants should be extracted")
            return Image("fifa-logo")
                .resizable()
                .scaledToFit()
                .overlay{
                    Circle()
                        .fill(.white.opacity(0.05))
                        .padding(25)
                }
        }
        
        var loginForm: some View{
            // FIXME: Extract Constants
            #warning("constants should be extracted")
            return VStack{
                CustomTextField(
                    text: $username,
                    label: "User Name",
                    placeholder: "Enter Username"
                )
                .padding(.bottom,20)
                
                CustomTextField(
                    text: $username,
                    label: "Password",
                    placeholder: "Enter Password"
                )
                .padding(.bottom)
                
                Button("LOGIN", action: {})
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color([#colorLiteral(red: 0.2078431249, green: 0.2078431249, blue: 0.2078431249, alpha: 1)][0]))
            }
        }
        
        
        var registerLabel: some View{
            // FIXME: Extract Constants
            #warning("constants should be extracted")
            return HStack{
                Text("Don't have an ccount?")
                    .font(.subheadline)
                    .fontWeight(.bold)
                NavigationLink("Register", destination: SignupScreen())
                    .foregroundStyle(.main)
            }
        }
        
    }
