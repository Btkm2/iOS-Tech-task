////
////  RecoNDashboardView.swift
////  Healthy
////
////  Created by Beket Muratbek on 13.03.2022.
////
//
//import SwiftUI
//
//struct RecoNDashboardView: View {
////    @Binding
//    private var images = ["facemask","lungs","heart","pills"]
//    private var gridItemLayout = [GridItem(.flexible(), spacing: 0), GridItem(.flexible())]
//    var body: some View {
////        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            VStack{
//                TopInfo()
//                Spacer()
//                VStack{
////                    Text("Some info for you")
//                    ScrollView{
//                        LazyVGrid(columns: gridItemLayout, spacing: 30){
//                            ForEach((0...4), id:\.self){_ in
//                                VStack{
//                                    Image(systemName: images[$0 % images.count])
//                                }
//                            }
//                        }
//                    }
//                }
//                Spacer()
//                VStack{
//                    Text("HI")
//                }
//            }
//    }
//}
//
//struct RecoNDashboardView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecoNDashboardView()
//    }
//}
//
//struct TopInfo: View {
//    var body: some View {
//        HStack(spacing:100){
//            Text("Welcome back!")
//                .font(.system(size: 20, weight: .medium, design: .default))
//            Image(systemName: "person")
//                .renderingMode(.original)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 30, height: 30)
//        }
//    }
//}
