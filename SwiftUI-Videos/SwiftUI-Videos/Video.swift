//
//  Video.swift
//  SwiftUI-Videos
//
//  Created by Konstantin Krumin on 2025-06-30.
//

import Foundation

struct Video: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var uploadDate: String
}

struct VideoList {
    static let allVideos = [
        Video(imageName: "37-tips", title: "37 Tips for Jr. Software Developers", uploadDate: "October 4, 2019"),
        Video(imageName: "90-90", title: "The 90/90 Rule", uploadDate: "January 19, 2019"),
        Video(imageName: "2018-setup", title: "iOS Development Setup - iMac Pro", uploadDate: "May 11, 2018")
    ]
}
