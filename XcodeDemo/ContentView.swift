//
//  ContentView.swift
//  XcodeDemo
//
//  Created by JMcCloskey on 28/07/19.
//  Copyright © 2019 JMcCloskey. All rights reserved.
//

import SwiftUI

struct Post {
    
    let id: Int
    let userName, text, imageName: String
}


struct ContentView: View {
    
    let posts: [Post] = [
    .init(id: 0, userName: "Jayanta Gogoi", text: "SOme information regarding updates", imageName: "puppy"),
    .init(id: 0, userName: "Jayanta Gogoi", text: "SOme information regarding updates", imageName: "puppy"),
    .init(id: 0, userName: "Jayanta Gogoi", text: "SOme information regarding updates", imageName: "puppy")
    ]
    
    
    var body: some View {
        
        NavigationView{
            List{
                
                ScrollView{
                    VStack(alignment: .leading){
                        Text("Trending").font(.title)
                        HStack{
                           VStack(alignment: .leading){
                               Image("item").resizable().frame(width: 120, height: 110)
                               Text("Group 1")
                           }
                           
                           VStack(alignment: .leading){
                              Image("item").resizable().frame(width: 120, height: 110)
                              Text("Group 2")
                          }.frame(width: 120)
                            
                            VStack(alignment: .leading){
                               Image("item").resizable().frame(width: 120, height: 110)
                               Text("Group 3")
                           }
                            VStack(alignment: .leading){
                                Image("item").resizable().frame(width: 120, height: 110)
                                Text("Group 4")
                           }
                           
                       }
                       
                    }
                }
                
                Text("SOme Output will");
                ForEach(posts, id: \.id){ post in
                    PostView(post: post)
                    
                }
                
             }
        }.navigationBarTitle(Text("Groups")).font(.headline)
    }
    
    
}

struct PostView: View{
    
    let post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            
            HStack{
                Image("user").resizable().frame(width: 60, height: 60).clipShape(Circle()).clipped()
                VStack(alignment: .leading, spacing: 4){
//                    Text(post.userName).font(.headline)
                    Text("Posted 8 Hrs Ago").font(.subheadline)
                }
            }.padding(.leading, 16).padding(.top, 16)
            Text("Post Body Text will be display here sdkjshfs skhjisfhskjfhs fkjsdhfk sdfjsdkjfhd skjfhdskfjhds fdsfkdsjhf dsfd").lineLimit(nil).padding(.leading, 16)
            Image(post.imageName)
            
        }.padding(.leading, -10)
        
    }
    
}


#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
