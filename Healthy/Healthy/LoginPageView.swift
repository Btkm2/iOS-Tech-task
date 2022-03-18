//
//  LoginPageView.swift
//  Healthy
//
//  Created by Beket Muratbek on 17.03.2022.
//

import SwiftUI
private var icons = ["AppleIcon", "GoogleIcon", "FacebookIcon"]

struct LoginPageView: View {
    @State var username:String = ""
    @State private var show = false
    @State var password:String = ""
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
//                TextFields(text: "First name", textField_text:"Enter your")
                Text_field(text: "Username", textField_text: "Enter your username")
    //                .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1).foregroundColor(Color.white))
    //                .padding(.all,5)
                Pass_field()
                ForgetPass()
                Spacer()
    //                .padding(.all, 5)
//                Btn_tgl()
                Button(action: {
                    show.toggle()
                }){
                    Text("Sign in")
                        .foregroundColor(Color.white)
                        .padding()
                        .padding([.leading, .trailing], 30)
                }
                .background(Color.blue)
                .cornerRadius(15)
                .shadow(radius: 10)
                if show {
                    RegisterPageView()
                } else {
                    LoginPageView()
                }
                Spacer()
//                Bottom_Navigation()
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
struct Text_field: View {
    @State var username:String = ""
    @State var first_name:String = ""
    @State var last_name:String = ""
    var text:String
    var textField_text:String
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
        }
    }
}

struct Bottom_Navigation: View {
    var body: some View {
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
}

struct ForgetPass: View {
    var body: some View {
        HStack(spacing: 3){
            Text("Forget password?")
            Text("click here")
                .underline()
                .foregroundColor(Color.blue)
        }
    }
}

struct Pass_field: View {
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
    }
}

//struct Pass_Text_Field: View {
//    var body: some View {
//        VStack(alignment:.leading, spacing: 0) {
//            Text("Password")
//                .padding(.leading, 15)
//                .font(.system(size: 25, weight: .medium, design: .default))
//                .foregroundColor(Color.gray)
//            //                    SecureField("Password",text:$password)
//            //                        .padding([.leading, .bottom, .trailing])
//            //                    .textFieldStyle(RoundedBorderTextFieldStyle())
//            HStack {
//                Image(systemName: "person").foregroundColor(.gray)
//                SecureField("Enter your password", text: $password)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//            }
//            .padding()
//            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
//            .background(Color.white)
//            .cornerRadius(10)
//            .padding([.trailing, .leading], 5)
//            .shadow(radius: 10)
//        }
//    }
//}

//struct Btn_tgl: View {
//    @State var show = false
//    var body: some View {
//        Button(action: {
//            show = true
//        }){
//            Text("Sign in")
//                .foregroundColor(Color.white)
//                .padding()
//                .padding([.leading, .trailing], 30)
//        }
//        .background(Color.blue)
//        .cornerRadius(15)
//        .shadow(radius: 10)
//        if show {
//            RegisterPageView()
//        } else {
//            LoginPageView()
//        }
//    }
//}

//struct UsernameText: View {
//    @State var username:String = ""
//    var body: some View {
//        VStack(alignment:.leading, spacing:0) {
//            Text("Username")
//                .padding(.leading, 15)
//                .font(.system(size: 25, weight: .medium, design: .default))
//                .foregroundColor(Color.gray)
//            HStack {
//                Image(systemName: "person").foregroundColor(.gray)
//                TextField("Enter your username", text: $username)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//            }
//            .padding()
//            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
//            .background(Color.white)
//            .cornerRadius(10)
//            .padding([.trailing, .leading], 5)
//            .shadow(radius: 10)
//        }
//    }
//}
