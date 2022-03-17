//
//  MainPageView.swift
//  Healthy
//
//  Created by Beket Muratbek on 13.03.2022.
//

import SwiftUI

struct MainPageView: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        TabView{
            Text("First page")
                .tabItem{
                    Image(systemName: "house")
                }
            Text("Second page")
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            Text("Account page")
                .tabItem{
                    Image(systemName: "person")
                }
        }
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
