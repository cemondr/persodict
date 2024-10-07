//
//  ContentView.swift
//  persodict
//
//  Created by Cem Onder on 10/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background with blur effect
            VisualEffectBlur() // Apply blur effect

            // Foreground content
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .padding(.bottom, 20)
                Text("Hello, world!")
                    .font(.largeTitle)
                    .padding()
            }
            .padding() // Add padding around the content
        }
        .edgesIgnoringSafeArea(.all) // Extend to the edges of the window
    }
}

/*Helper for Blur effect*/
struct VisualEffectBlur: NSViewRepresentable {
    func makeNSView(context: Context) -> NSVisualEffectView {
        let view = NSVisualEffectView()
        view.blendingMode = .behindWindow // You can also use .withinWindow for different effects
        view.material = .hudWindow // Use .hud for a blurred effect suitable for HUDs
        view.state = .active // Set the view's state to active to enable the effect
        return view
    }
    
    func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
        // Update the view if needed
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .frame(width: 800, height: 600) // Set preview size
    }
}
