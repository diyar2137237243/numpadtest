//
//  ContentView.swift
//  numpad
//
//  Created by deez nuts enjoyer on 12.08.23.
//

import SwiftUI

import LocalConsole

import Foundation

var ip = null + ":3000"

var url = URL(string: ip)!
var request = URLRequest(url: url)
request.httpMethod = "POST"
request.setValue("application/json", forHTTPHeaderField: "Content-Type")

let data: [String: Any] = ["value": 1]
do {
    let jsonData = try JSONSerialization.data(withJSONObject: data, options: [])
    request.httpBody = jsonData
} catch {
    print("Error creating JSON data: \(error)")
}

let task = URLSession.shared.dataTask(with: request) { data, response, error in
    if let error = error {
        print("Error: \(error)")
        return
    }
    
    if let data = data {
        if let jsonString = String(data: data, encoding: .utf8) {
            print("Response: \(jsonString)")
        }
    }
}

task.resume()

let consoleManager = LCManager.shared

class HapticManager {
    
    static let instance = HapticManager()

    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }

    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }

}


struct ContentView: View {
    var body: some View {
        VStack {
            HStack {

            }

            HStack {
                Button("1") {
                    consoleManager.print("Hello, World! :D 1 ")
                    consoleManager.isVisible = true
                    HapticManager.instance.impact(style: .soft)
                }
                .frame(width: 100, height: 100)
                .border(.black)
                .background(Color.black)
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button("2") {
                    consoleManager.print("Hello, World! :D 2 ")
                    consoleManager.isVisible = true
                    HapticManager.instance.impact(style: .soft)
                }
                .frame(width: 100, height: 100)
                .border(.black)
                .background(Color.black)
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button("3") {
                    consoleManager.print("Hello, World! :D 3 ")
                    consoleManager.isVisible = true
                    HapticManager.instance.impact(style: .soft)
                }
                .frame(width: 100, height: 100)
                .border(.black)
                .background(Color.black)
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
                
            HStack {
                
                Button("4") {
                    consoleManager.print("Hello, World! :D 4 ")
                    consoleManager.isVisible = true
                    HapticManager.instance.impact(style: .soft)
                }
                .frame(width: 100, height: 100)
                .border(.black)
                .background(Color.black)
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button("5") {
                    consoleManager.print("Hello, World! :D 5 ")
                    consoleManager.isVisible = true
                    HapticManager.instance.impact(style: .soft)
                }
                .frame(width: 100, height: 100)
                .border(.black)
                .background(Color.black)
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button("6") {
                    consoleManager.print("Hello, World! :D 6 ")
                    consoleManager.isVisible = true
                    HapticManager.instance.impact(style: .soft)
                }
                .frame(width: 100, height: 100)
                .border(.black)
                .background(Color.black)
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
                
            HStack {
                
                Button("7") {
                     consoleManager.print("Hello, World! :D 7 ")
                    consoleManager.isVisible = true
                    HapticManager.instance.impact(style: .soft)
                }
                .frame(width: 100, height: 100)
                .border(.black)
                .background(Color.black)
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button("8") {
                    consoleManager.print("Hello, World! :D 8 ")
                    consoleManager.isVisible = true
                    HapticManager.instance.impact(style: .soft)
                }
                .frame(width: 100, height: 100)
                .border(.black)
                .background(Color.black)
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button("9") {
                    consoleManager.print("Hello, World! :D 9 ")
                    consoleManager.isVisible = true
                    HapticManager.instance.impact(style: .soft)
                }
                .frame(width: 100, height: 100)
                .border(.black)
                .background(Color.black)
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
