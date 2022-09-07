//
//  RegisterPageView.swift
//  Healthy
//
//  Created by Beket Muratbek on 17.03.2022.
//

import SwiftUI
import AlertToast
private var icons = ["AppleIcon", "GoogleIcon", "FacebookIcon"]
private var account_usernames = [String]()

//let account = Account(context: context)

struct RegisterPageView: View {

//    let account = Account(context: viewContext)
    var body: some View {
        ZStack {
//            LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .top, endPoint: .bottom)
//                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Spacer()
                Text("Create Account")
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
                TextFields(text: "First name", textField_text:"Enter your firstname")
//                VStack(alignment:.leading, spacing:0) {
//                    Text("Username")
//                        .padding(.leading, 15)
//                        .font(.system(size: 25, weight: .medium, design: .default))
//                        .foregroundColor(Color.gray)
//                    HStack {
//                      Image(systemName: "person").foregroundColor(.gray)
//                      TextField("Enter your username", text: $username)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                      }
                TextFields(text: "Username", textField_text: "Enter your username")
//                    .padding()
//                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
//                    .background(Color.white)
//                    .cornerRadius(10)
//                    .padding([.trailing, .leading], 5)
//                    .shadow(radius: 10)
                TextFields(text: "Mobile number", textField_text: "Enter your mobile number")
                PasswordField()
                SubmitButton()
                    .padding([.top, .bottom], 25)
                BottomNav()
                Spacer()
                }
    //                .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1).foregroundColor(Color.white))
    //                .padding(.all,5)
            
//                HStack(spacing: 3){
//                    Text("Forget password?")
//                    Text("click here")
//                        .underline()
//                        .foregroundColor(Color.blue)
//                }
//                Spacer()
//    //                .padding(.all, 5)
//                Spacer()
//                BottomNav()
            }
//            .background(Image("Health_Walp"))
        }
    
}

struct RegisterPageView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPageView()
    }
}

struct BottomNav: View {
    var body: some View {
        VStack {
//            HStack{
//                Text("Don't have account?")
//                Text("Sign up")
//                    .underline()
//                    .foregroundColor(Color.blue)
//            }
            HStack{
                ForEach(icons, id:\.self){ icon in
                    Button(action:{}){
                        Image("\(icon)")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 44, height: 44)
                    }
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
}

struct TextFields: View {
    @State var username:String = ""
    @State var first_name:String = ""
    @State var last_name:String = ""
    var text:String
    var textField_text:String
//    var username_text:String
    var body: some View {
        VStack(alignment:.leading, spacing:0) {
            Text(text)
                .padding(.leading, 15)
                .font(.system(size: 25, weight: .medium, design: .default))
                .foregroundColor(Color.gray)
            HStack {
                Image(systemName: "person").foregroundColor(.gray)
                TextField(textField_text, text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            .background(Color.white)
            .cornerRadius(10)
            .padding([.trailing, .leading], 5)
            .shadow(radius: 10)
//            username_text = username
//            account_usernames.append(username)
        }
    }
//    add_items(username_text)
}

func add_items(_ username: String){
    account_usernames.append(username)
    print(account_usernames)
}

struct PasswordField: View {
    @State var password:String = ""
    var body: some View {
        VStack(alignment:.leading, spacing: 0) {
            Text("Password")
                .padding(.leading, 15)
                .font(.system(size: 25, weight: .medium, design: .default))
                .foregroundColor(Color.gray)
            //                    SecureField("Password",text:$password)
            //                        .padding([.leading, .bottom, .trailing])
            //                    .textFieldStyle(RoundedBorderTextFieldStyle())
//            HStack {
//                Image(systemName: "person").foregroundColor(.gray)
                SecureField("Enter your password", text: $password)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//            }
                .textFieldStyle(DefaultTextFieldStyle())
            .frame(width: UIScreen.main.bounds.width*0.95, height: 50)
            .padding(.all, 10)
//            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
//            .background(Color.white)
            .cornerRadius(10)
//            .padding([.trailing, .leading], 5)
            .shadow(radius: 10)
        }
    }
}

struct SubmitButton: View {
    @State private var showToast = false
    @State private var show = false
    var body: some View {
            VStack {
                Button(action: {
                    showToast.toggle()
//                    show = true
                }){
                    Text("Create account")
                        .foregroundColor(Color.white)
                        .padding()
                        .padding([.leading, .trailing], 30)
                }
                .background(Color.blue)
                .cornerRadius(5)
            .shadow(radius: 10)
            }
            .toast(isPresenting: $showToast, duration: 3, tapToDismiss: false){
                AlertToast(displayMode: .hud ,type: .regular, title: "Account created!")
        }
//        if show {
//            RegisterPageView()
//        } else {
//            LoginPageView()
//        }
    }
}
