//
//  LoginPageView.swift
//  Healthy
//
//  Created by Beket Muratbek on 17.03.2022.
//

import SwiftUI

struct LoginPageView: View {
    @State var username:String = ""
    @State var password:String = ""
    private var icons = ["AppleIcon", "GoogleIcon", "FacebookIcon"]
    var body: some View {
        ZStack {
//            LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .top, endPoint: .bottom)
//                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Spacer()
                Text("Sign in")
                    .font(.system(size: 25, weight: .semibold, design: .default))
//                Image("HeartBeat_2")
//                    .resizable()
//                    .renderingMode(.original)
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: UIScreen.main.bounds.width*0.87, height: UIScreen.main.bounds.height*0.4)
//                    .cornerRadius(30)
//                    .shadow(color: Color.black.opacity(0.3), radius: 30, x: 0, y: 0)
    //                .shadow(radius: 20)
//                    .padding(.bottom, 50)
                Spacer()
                VStack(alignment:.leading, spacing:0) {
                    Text("Username")
                        .padding(.leading, 15)
                        .font(.system(size: 25, weight: .medium, design: .default))
                        .foregroundColor(Color.gray)
                    HStack {
                      Image(systemName: "person").foregroundColor(.gray)
                      TextField("Enter your username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                      }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding([.trailing, .leading], 5)
                    .shadow(radius: 10)
                }
    //                .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1).foregroundColor(Color.white))
    //                .padding(.all,5)
                VStack(alignment:.leading, spacing: 0) {
                    Text("Password")
                        .padding(.leading, 15)
                        .font(.system(size: 25, weight: .medium, design: .default))
                        .foregroundColor(Color.gray)
//                    SecureField("Password",text:$password)
//                        .padding([.leading, .bottom, .trailing])
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    HStack {
                      Image(systemName: "person").foregroundColor(.gray)
                      SecureField("Enter your password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                      }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding([.trailing, .leading], 5)
                    .shadow(radius: 10)
                }
                HStack(spacing: 3){
                    Text("Forget password?")
                    Text("click here")
                        .underline()
                        .foregroundColor(Color.blue)
                }
                Spacer()
    //                .padding(.all, 5)
                Button(action: {
                    
                }){
                   Text("Sign in")
                        .foregroundColor(Color.white)
                        .padding()
                        .padding([.leading, .trailing], 30)
                }
                .background(Color.blue)
                .cornerRadius(15)
                .shadow(radius: 10)
                Spacer()
                VStack {
                    HStack{
                        Text("Don't have account?")
                        Text("Sign up")
                            .underline()
                            .foregroundColor(Color.blue)
                    }
                    HStack{
                        ForEach(icons, id:\.self){ icon in
                            Image("\(icon)")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 50)
                        }
//                        Image("AppleIcon")
//                            .resizable()
//                            .renderingMode(.original)
//                            .aspectRatio(contentMode: .fit)
//                        Image("AppleIcon")
//                            .resizable()
//                            .renderingMode(.original)
//                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
            .background(Image("Health_Walp"))
        }//.background(Color.red)
//            .edgesIgnoringSafeArea(.all)
//        .background(Image("Health_Walp"))
    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
//            .background(Color("Gradient"))
    }
}
