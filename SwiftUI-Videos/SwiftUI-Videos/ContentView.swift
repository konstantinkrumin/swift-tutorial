//
//  ContentView.swift
//  SwiftUI-Videos
//
//  Created by Konstantin Krumin on 2025-06-30.
//

import SwiftUI

struct ContentView: View {
    var videos: [Video] = []
    
    var body: some View {
        NavigationView {
            List(videos) { video in
                Image(video.imageName)
                    .resizable()
                    .frame(height: 90.0)
                    .scaledToFit()
                    .cornerRadius(8)
                
                Spacer().frame(width: 16)
                
                VStack(alignment: .leading) {
                    Text(video.title)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.75)
                    Spacer().frame(height: 5)
                    Text(video.uploadDate)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }.navigationTitle(Text("Sean's Videos"))
        }
    }
}

#Preview {
    ContentView(videos: VideoList.allVideos)
}
