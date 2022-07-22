//
//  SignUp.swift
//  MainRegistration
//
//  Created by @andreev2k on 22.07.2022.
//

import SwiftUI

struct SignUp: View {
    @State var email = ""
    @State var pass = ""
    @State var rePass = ""
    @Binding var index: Int //привязка к ContentView и
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    Spacer(minLength: 0)
                    
                    VStack (spacing: 10) {
                        Text("SignUp")
                            .foregroundColor(self.index == 1 ? Color.white : Color.gray)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Capsule()
                            .fill(self.index == 1 ? Color("Izumrud") : Color.clear)
                            .frame(width: 100, height: 5)
                    }
                } .padding(.horizontal)
                    .padding(.top, 30)
                
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "envelope.fill")
                            .foregroundColor(Color("Izumrud"))
                        TextField("Email", text: self.$email)
                        
                    }
                    Divider()
                        .background(.black.opacity(0.5))
                } .padding(.horizontal)
                    .padding(.top, 40)
                
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(Color("Izumrud"))
                        SecureField("Password", text: self.$pass)
                        
                    }
                    Divider()
                        .background(.black.opacity(0.5))
                } .padding(.horizontal)
                    .padding(.top, 30)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(Color("Izumrud"))
                        SecureField("Repeat Password", text: self.$rePass)
                    }
                    Divider()
                        .background(.black.opacity(0.5))
                } .padding(.horizontal)
                    .padding(.top, 30)
            }
            .padding()
            .padding(.bottom, 65)
            .background(Color("Mint"))
            .clipShape(CShape1())
            .contentShape(CShape1())
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5)
            .onTapGesture {
                self.index = 1
            }
            .cornerRadius(35)
            
            Button(action: {
                //
            }) {
                Text("SignUp")
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(Color("Peach"))
                    .clipShape(Capsule())
                    .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 0)
            }
            .offset(y: 30)
            .opacity(self.index == 1 ? 1 : 0)
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
