//
//  ContentView.swift
//  hackingswifth-day-19
//
//  Created by john benedict miranda on 7/21/24.
//


import SwiftUI

struct ContentView: View {
    let temps = ["celsius", "farenheit", "kelvin"]
    let lengths = ["meters", "kilomdeters", "feet", "yards", "miles"]
    let times = ["seconds", "minutes", "hours", "days"]
    let volumes = ["mililiters", "liters", "cups", "pints", "gallons"]

    @State private var selectedInput = ""
    @State private var selectedOutput = ""
    @State private var finalAmount = ""

    var body: some View {
        VStack {
            Text("Temperature Converter App")
            Form {
                TextField("Default/plain text field", text: $finalAmount)


                Picker("Select your Input", selection: $selectedInput) {
                    ForEach(temps, id: \.self) {
                        Text($0)
                    }
                }
                Picker("Select your Output", selection: $selectedOutput) {
                    ForEach(temps, id: \.self) {
                        Text($0)
                    }
                }
        }
        .padding()
    }
  }
}

#Preview {
    ContentView()
}
