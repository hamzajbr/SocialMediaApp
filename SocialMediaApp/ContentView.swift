//
//  ContentView.swift
//  SocialMediaApp
//
//  Created by mac on 01/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView {
            ScrollView {
                VStack{
                    HeaderView()
                    AccountsView()
                    ScrollView {
                        PostView(postedImage: "beach")
                        PostView(userPhoto: "👨🏻‍💻", userName: "Hamza Al Jabr", cityName: "Ilmenau",likes: "560",seen: "2.4k",postedImage: "sunset")
                        PostView(userPhoto: "👨🏻‍⚕️", userName: "Abbas akhi", cityName: "München",postedImage: "xcode")
                        PostView(userPhoto: "👨🏻‍💻", userName: "Matrin Haardt", cityName: "Ilmenau",postedImage: "horse")
                        PostView(userPhoto: "🧔🏻‍♂️", userName: "Stefan Schmidt", cityName: "Erfurt",postedImage: "sunset")
                        PostView(userPhoto: "👩‍👧‍👦", userName: "Laura Wolf", cityName: "Frankfurt",postedImage: "beach")
                        
                    }
                    
                    
                }
            }.navigationTitle("Instabook")
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    @State var showSheet : Bool = false
    
    var body: some View {
        HStack{
            Image(systemName: "paperplane.circle")
                .foregroundColor(.blue)
                .font(.system(size: 50))
            
            Spacer()
            Button {
                showSheet.toggle()
            } label: {
                Image(systemName: "bell.badge.fill")
                    .foregroundColor(.blue)
                    .font(.system(size: 33))
            }
            .sheet(isPresented: $showSheet) {
                NotificationsView()
            }
            
            
            
            
        }
        .padding(.horizontal,8)
        .cornerRadius(20)
    }
}

struct AccountsView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            
            HStack {
                Image(systemName: "face.smiling.fill")
                    .frame(width: 70, height: 70)
                    .foregroundColor(.green.opacity(0.7))
                    .font(.system(size: 60))
                    .overlay(Circle()
                                .stroke(LinearGradient(colors: [.red,.blue], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 3)
                    )
                    .overlay(Image(systemName: "plus.circle.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 30).bold())
                                .offset(x: 20, y: 20)
                    )
                Text("🤵🏻‍♂️")
                    .font(.system(size: 60))
                    .frame(width: 70, height: 70)
                    .background(Color.green)
                    .cornerRadius(50)
                    .overlay(Circle()
                                .stroke(.blue, lineWidth: 3)
                    )
                Text("🤵")
                    .font(.system(size: 60))
                    .frame(width: 70, height: 70)
                    .background(Color.green)
                    .cornerRadius(50)
                    .overlay(Circle()
                                .stroke(LinearGradient(colors: [.red,.yellow], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 3)
                    )
                Text("👨🏻‍⚕️")
                    .font(.system(size: 60))
                    .frame(width: 70, height: 70)
                    .background(Color.green)
                    .cornerRadius(50)
                    .overlay(Circle()
                                .stroke(LinearGradient(colors: [.purple,.white], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 3)
                    )
                Text("👩🏻‍🎤")
                    .font(.system(size: 60))
                    .frame(width: 70, height: 70)
                    .background(Color.green)
                    .cornerRadius(50)
                Text("👩‍🏭")
                    .font(.system(size: 60))
                    .frame(width: 70, height: 70)
                    .background(Color.green)
                    .cornerRadius(50)
                Text("🧔🏻‍♂️")
                    .font(.system(size: 60))
                    .frame(width: 70, height: 70)
                    .background(Color.green)
                    .cornerRadius(50)
                Text("👷🏻‍♀️")
                    .font(.system(size: 60))
                    .frame(width: 70, height: 70)
                    .background(Color.green)
                    .cornerRadius(50)
                Text("🧕🏻")
                    .font(.system(size: 60))
                    .frame(width: 70, height: 70)
                    .background(Color.green)
                    .cornerRadius(50)
                Text("👩🏼")
                    .font(.system(size: 60))
                    .frame(width: 70, height: 70)
                    .background(Color.green)
                    .cornerRadius(50)
            }
            .padding(.horizontal, 8)
            .padding(.vertical,3)
            //.background(Color.blue.opacity(0.1))
            .background(LinearGradient(colors: [.blue,.green,.yellow], startPoint: .topLeading, endPoint: .bottomTrailing).opacity(0.3))
            
        }.cornerRadius(20)

    }
}

struct NotificationsView: View {
    var body: some View {
        
        NavigationView{
            
            
            List{
                HStack {
                    Text("🧑🏻‍🦱")
                        .font(.system(size: 50))
                        .frame(width: 60, height: 60)
                        .background(Color.green)
                        .cornerRadius(50)
                    Text("Stefan sent you a message")
                }
                HStack {
                    Text("🧔🏻‍♂️")
                        .font(.system(size: 50))
                        .frame(width: 60, height: 60)
                        .background(Color.green)
                        .cornerRadius(50)
                    Text("Hamza sent you a message")
                }
                Section(header:Text("News")){
                    HStack {
                        Text("💐")
                            .font(.system(size: 50))
                            .frame(width: 60, height: 60)
                            .background(Color.green)
                            .cornerRadius(50)
                        Text("new flowers were released!")
                    }
                    HStack {
                        Text("🍇")
                            .font(.system(size: 50))
                            .frame(width: 60, height: 60)
                            .background(Color.green)
                            .cornerRadius(50)
                        Text("check the new Product")
                    }
                    HStack {
                        Text("🍕")
                            .font(.system(size: 50))
                            .frame(width: 60, height: 60)
                            .background(Color.green)
                            .cornerRadius(50)
                        Text("your Pizza order has arrived!")
                    }
                    
                }
                
                
            }.navigationTitle("Messages")
            
        }
        
    }
}

struct PostView: View {
    
    var userPhoto: String = "👩🏻‍🎤"
    var userName : String = "Gabreilla Müller"
    var cityName : String = "Ilmenau"
    var likes : String = "1.3k"
    var seen : String = "32.2k"
    var postedImage : String = ""
    @State var showOptions : Bool = false
    
    
    var body: some View {
        
        VStack{
            HStack{
                Text(userPhoto)
                    .font(.system(size: 40))
                    .frame(width: 50, height: 50)
                    .background(Color.blue.opacity(0.5))
                    .cornerRadius(50)
                
                VStack(alignment: .leading) {
                    Text(userName)
                    Text("\(cityName), Germany")
                        .foregroundColor(.secondary)
                        .font(.footnote)
                }
                Spacer()
                Button {
                    showOptions.toggle()
                } label: {
                    Image(systemName:"ellipsis.circle.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.blue.opacity(0.5))
                }
                .sheet(isPresented: $showOptions) {
                    List{
                        Text("Share this post")
                        Text("Add to favorites")
                        Text("Delete this Post")
                            .foregroundColor(.red).bold()
                    }
                }
            }
            .padding(.horizontal,13)
           
                    Image(postedImage)
                        .resizable()
                        .frame(width: 350, height: 300, alignment: .center)
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(20)
                
            
                HStack{
                    HStack{
                        Image(systemName: "heart.fill")
                        Text(likes)
                            .font(.callout)
                    }
                    Spacer()
                    HStack{
                        Image(systemName: "eye")
                        Text(seen)
                            .font(.callout)
                        
                    }
                    Spacer()
                    HStack {
                        Image(systemName: "bubble.left")
                        Text("264")
                            .font(.callout)
                        
                    }
                }
                .foregroundColor(.blue.opacity(0.5))
                .font(.system(size: 20))
                .padding(.horizontal,30)
        }//.background(Color.purple.opacity(0.27))
        .background(LinearGradient(colors: [.red,.green], startPoint: .topLeading, endPoint: .bottomTrailing).opacity(0.1))
        }
    }


