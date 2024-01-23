//
//  ContentView.swift
//  PhotoPicker
//
//  Created by duverney muriel on 1/11/23.
//

import SwiftUI
import PhotosUI

struct ContentView: View {
     
    @State private var avatarImage: UIImage?
    @State private var photoPickerItem: PhotosPickerItem?
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 20){
                PhotosPicker(selection: $photoPickerItem, matching: .images) {
                    
                    Image(uiImage: avatarImage ??  UIImage(resource: .defaultAvatar))
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                }
                
                VStack(alignment: .leading){
                    Text("Hello, world!").font(.largeTitle.bold())
                    Text("El duverx").font(.callout).foregroundStyle(.secondary)
                }
            }
            Spacer()
        }
        .padding()
    }
}



#Preview {
    ContentView()
}
