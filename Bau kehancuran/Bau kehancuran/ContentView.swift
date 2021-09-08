//
//  ContentView.swift
//  Bau kehancuran
//
//  Created by Ahmad Miftah Syakir on 26/04/21.
//



import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Eksplorasi")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("kontak masuk")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                        Text("koleksi")
                    }
                
            }.accentColor(.red)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    var body: some View{
        NavigationView{
            Kontent()
                .navigationBarItems(leading:
                                        HStack{
                                            Button(action:{print("hello button")
                                                
                                            }){
                                                Image("yt uji coba")
                                                    .renderingMode(.original)
                                                    .resizable()
                                                    .frame(width: 50, height: 50)
                                            }
                                        },
                                    trailing:
                                        HStack(spacing : 20){
                                            Button(action: {print("Hello print")}){
                                                Image(systemName: "tray.full")
                                                    .foregroundColor(Color.secondary)
                                            }
                                            Button(action: {print("Hello print")}){
                                                Image(systemName: "video.fill")
                                                    .foregroundColor(Color.secondary)
                                            }
                                            Button(action: {print("Hello print")}){
                                                Image(systemName: "magnifyingglass")
                                                    .foregroundColor(Color.secondary)
                                            }
                                            
                                            Button(action: {print("Hello print")}){
                                                Image("Fa ainama caldera")
                                                    .renderingMode(.original)
                                                    .resizable()
                                                    .frame(width: 40, height: 30)
                                                    .clipShape(Circle())
                                            }
                                        }
                                    )
                .navigationBarTitle("")
                .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct Kontent : View{
    var body : some View{
        List{
            CellKontent(imageKontent: "idn", profileKontent: "Fa ainama caldera", judul: "Tutorial", deskripsi: "di tonton 2.345.659x" , durasi: "132.45.32")
            CellKontent(imageKontent: "kop", profileKontent: "Fa ainama caldera", judul: "Tutorial(2)", deskripsi: "di tonton 4.561.323x", durasi: "145.54.32")
            CellKontent(imageKontent: "headset", profileKontent: "Fa ainama caldera", judul: "Tutorial(3)", deskripsi: "di tonton 5.321.459", durasi: "156.65.32")
        }
    }
}

struct CellKontent : View{
    var imageKontent : String
    var profileKontent : String
    var judul : String
    var deskripsi : String
    var durasi : String
    
    var body: some View{
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(imageKontent)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text(durasi)
                    .padding(.all,2)
                    .foregroundColor(.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing,5)
                    .padding(.bottom,5)
            }
            
            HStack(spacing: 20){
                Image(profileKontent)
                    .resizable()
                    .frame(width: 25, height: 30)
                    .clipShape(Circle())
                VStack(alignment : .leading){
                    Text(judul).font(.headline)
                    HStack{
                        Text(deskripsi).font(.caption)
                        Spacer()
                        Image(systemName: "list.bullet")
                    }
                }
                
            }
        }
    }
}

