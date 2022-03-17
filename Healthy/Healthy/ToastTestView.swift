//
//  ToastTestView.swift
//  Healthy
//
//  Created by Beket Muratbek on 13.03.2022.
//

import SwiftUI
import AlertToast

struct ToastTestView: View {
    @State private var showToast = false
    var body: some View {
        VStack{
            Button("Press me"){
                showToast.toggle()
            }.frame(width: 200, height: 50)
                .shadow(color: Color.gray, radius: 10, x: 0, y: 0)
                .cornerRadius(10)
                .background(Color.green)
        }
        .toast(isPresenting: $showToast, duration: 3, tapToDismiss: false){
            AlertToast(displayMode: .hud ,type: .regular, title: "It's a toast")
//                .frame(width: 100, height: 20) as! AlertToast
        }
    }
}

struct ToastTestView_Previews: PreviewProvider {
    static var previews: some View {
        ToastTestView()
    }
}
