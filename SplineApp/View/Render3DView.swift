//
//  Render3DView.swift
//  SplineApp
//
//  Created by Aniket Bane on 27/02/24.
//

import SwiftUI
import SplineRuntime
import ProgressHUD

struct Render3DView: View {
    var object: objects
    
    // State variables to track the loading status and whether to show the activity indicator
    @State private var isLoading = true
    
    var body: some View {
        VStack {
            if isLoading {
                ActivityIndicator()
            } else {
//                let url = URL(string: "https://build.spline.design/8gbKmcNP8lpWXdTgOGxi/scene.splineswift")!
                let url = Bundle.main.url(forResource: object.name, withExtension: "splineswift")!
                try? SplineView(sceneFileURL: url)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                isLoading = false
            }
        }
    }
}

struct ActivityIndicator: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
    }
}

#Preview {
    Render3DView(object: objectData[2])
}

