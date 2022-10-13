//
//  ContentView.swift
//  Islamic Daily App
//
//  Created by Md. Masum  on 20/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Image(systemName: "moon").resizable().aspectRatio(contentMode: .fit).frame(width: 150, height: 150, alignment: .center).padding()
                
                Text("IOS Islamic Daily")
                    .font(.system(size: 30, weight: .light, design: .default)).padding()
                
                NavigationLink(destination: SecondScreen(),
                    label: {GetStartedButton()} )
                
            }
        }
    }
}

struct GetStartedButton: View {
    var body: some View{
        Text("Get Started").frame(width: 200, height: 50, alignment: .center)
            .background(Color.blue).foregroundColor(.white).cornerRadius(8)
    }
}

/*struct StartZikirButton: View {
    var body: some View{
        Text("Start Zikir").frame(width: 100, height: 25, alignment: .center)
            .background(Color.blue).foregroundColor(.white).cornerRadius(8)
    }
}*/

struct SecondScreen: View {
    var body: some View {
        
            VStack{
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                    Image(systemName: "circle.grid.cross").resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50, alignment: .center)
                    
                    Text("Zikir")
                        .font(.system(size: 15, weight: .light, design: .default))
                    
                    NavigationLink(destination: ZikirScene(),
                        label: {Text("Start Zikir").frame(width: 120, height: 35, alignment: .center)
                        .background(Color.blue).foregroundColor(.white).cornerRadius(8)} )
                    }
                    Spacer()
                    VStack{
                    Image(systemName: "book").resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50, alignment: .center)
                    
                    Text("Quran")
                        .font(.system(size: 15, weight: .light, design: .default))
                    
                    NavigationLink(destination: QuranScene(),
                        label: {Text("Start Quran").frame(width: 120, height: 35, alignment: .center)
                        .background(Color.blue).foregroundColor(.white).cornerRadius(8)} )
                    }
                    Spacer()
                }
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                    Image(systemName: "list.bullet.rectangle.portrait").resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50, alignment: .center)
                    
                    Text("Zakat Calculator")
                        .font(.system(size: 15, weight: .light, design: .default))
                    
                    NavigationLink(destination: ContentView(),
                        label: {Text("Calculate").frame(width: 120, height: 35, alignment: .center)
                        .background(Color.blue).foregroundColor(.white).cornerRadius(8)} )
                    }
                    Spacer()
                    VStack{
                    Image(systemName: "video").resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50, alignment: .center)
                    
                    Text("Lectures")
                        .font(.system(size: 15, weight: .light, design: .default))
                    
                    NavigationLink(destination: LecturesScene(),
                        label: {Text("Stream").frame(width: 120, height: 35, alignment: .center)
                        .background(Color.blue).foregroundColor(.white).cornerRadius(8)} )
                    }
                    Spacer()
                }
                
                Spacer()
            }.navigationTitle("Home")
        
    }
}


struct ZikirScene: View {
    @State var count1 = 0
    @State var count2 = 0
    @State var count3 = 0
    var body: some View {

            VStack{
                Spacer()
                
                Text("Zikir Daily").font(.system(size: 35, weight: .regular, design: .rounded))
                HStack{
                    Text("Count: ")
                    Text(String(count1)).font(.system(size: 50))
                    
                    Button {
                        count1=0
                    } label: {
                        Image(systemName: "repeat").resizable().frame(width: 35, height: 35, alignment: .center)
                            .foregroundColor(.blue).cornerRadius(8).padding()
                    }
                    
                    Button {
                        count1+=1
                    } label: {
                        Text("Allahu Akbar").frame(width: 150, height: 35, alignment: .center)
                            .background(Color.blue).foregroundColor(.white).cornerRadius(8)
                    }
                }
                
                HStack{
                    Text("Count: ")
                    Text(String(count2)).font(.system(size: 50))
                    
                    Button {
                        count2=0
                    } label: {
                        Image(systemName: "repeat").resizable().frame(width: 35, height: 35, alignment: .center)
                            .foregroundColor(.blue).cornerRadius(8).padding()
                    }
                    
                    Button {
                        count2+=1
                    } label: {
                        Text("Allhumdullilah").frame(width: 150, height: 35, alignment: .center)
                            .background(Color.blue).foregroundColor(.white).cornerRadius(8)
                    }
                }
                
                HStack{
                    Text("Count: ")
                    Text(String(count3)).font(.system(size: 50))
                    
                    Button {
                        count3=0
                    } label: {
                        Image(systemName: "repeat").resizable().frame(width: 35, height: 35, alignment: .center)
                            .foregroundColor(.blue).cornerRadius(8).padding()
                    }
                    
                    Button {
                        count3+=1
                    } label: {
                        Text("Subhanallah").frame(width: 150, height: 35, alignment: .center)
                            .background(Color.blue).foregroundColor(.white).cornerRadius(8)
                    }
                }
                
                Spacer()
            }
        
    }
}

struct QuranScene: View {
    
    var videos:[Video] = VideoList.topTen
    var body: some View {
        
        List(videos, id: \.id){ video in
            Image(systemName: "play.rectangle").resizable().frame(width: 100, height: 85, alignment: .center).padding(.vertical, 10)
                    
                VStack(alignment: .leading, spacing: 5){
                    Text(video.title)
                        .fontWeight(.medium)
                        .lineLimit(2)
                    Text(video.uploadDate)
                }

        }.navigationTitle("Al Quran")
        
    }
}

struct LecturesScene: View {
    
    var videos:[Video] = VideoList.topTen
    var body: some View {
        
        List(videos, id: \.id){ video in
            Image(systemName: "play.rectangle.on.rectangle").resizable().frame(width: 100, height: 85, alignment: .center).padding(.vertical, 10)
                    
                VStack(alignment: .leading, spacing: 5){
                    Text(video.title)
                        .fontWeight(.medium)
                        .lineLimit(2)
                    Text(video.uploadDate)
                }

        }.navigationTitle("Islamic Lectures")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
