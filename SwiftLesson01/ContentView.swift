//
//  ContentView.swift
//  SwiftLesson01
//
//  Created by Mahardika Kessuma Denie on 17/08/23.
//

import SwiftUI

struct ContentView: View {
     var body: some View {
         ZStack {
             Image("bg")
                 .resizable()
                 .edgesIgnoringSafeArea(.all)
             VStack(spacing: 20) {
                 Logo()
                 FormBox()
             }
             .padding(.all, 20)
         }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Logo()
                FormBox()
            }
            .padding(.all, 20)
        }
    }
}

struct Logo: View {
     var body: some View {
         HandRaisedView()
        }
}

struct HandRaisedView : View {
    var body : some View {
        VStack {
            Image(systemName: "hand.raised")
                .resizable()
                .frame(width: 100, height: 100)
                .background(Color("Warnaku"))
                .padding()
                .background(Color("Warnaku"))
                .cornerRadius(20)
            Text("Login SwiftUI")
                .foregroundColor(Color.white).bold()
        }
    }
}

struct FormBox: View {
    @State var username:String = ""
    @State var password:String = ""
    
    var body : some View {
        VStack(alignment: .leading) {
            Text("Username").font(.callout).bold()
            TextField("Masukan Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Password").font(.callout).bold()
            SecureField("Masukan Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action:{print("Halo Gun")}) {
                HStack {
                    Text("SignIn").multilineTextAlignment(.center)
                    Spacer()
                }
            }.padding()
                .background(Color.green)
                .cornerRadius(20)
                .foregroundColor(Color.white)
        }
        .padding(.all, 30)
        .background(Color.orange)
        .cornerRadius(10)
    }
}
