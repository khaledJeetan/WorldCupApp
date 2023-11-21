//
//  CustomTextField.swift
//  WorldCupApp
//
//  Created by Prince Jeetan on 21/11/2023.
//

import SwiftUI

struct CustomTextField: View {
    
    @Binding var text:String
    @State var label:String
    @State var placeholder:String
    @State var icon:String?
    @State var isSecure:Bool = false
    
    var body: some View {
        VStack(alignment: .leading){
            Text(label)
            HStack(spacing:0){
                if isSecure{
                    SecureField(placeholder, text: $text)
                }else{
                    TextField(placeholder, text: $text)
                }
                if let icon = icon{
                    Image(systemName: icon)
                }
            }
            .foregroundStyle(.gray)
            .padding()
            .border(Color.gray)
            .clipShape(RoundedRectangle(cornerRadius: 4.0))
        }
    }
}

//#Preview {
//    CustomTextField(text: <#Binding<String>#>, label: <#String#>, placeholder: <#String#>)
//}
