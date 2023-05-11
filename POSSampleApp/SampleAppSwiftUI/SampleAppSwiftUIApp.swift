//
//  SampleAppSwiftUI.swift
//  SampleAppSwiftUI
//
//  See LICENSE folder for this sample’s licensing information.
//

import SwiftUI

@main
struct SampleAppSwiftUI: App {
    var body: some Scene {
        WindowGroup {
            MainView(viewModel: MainViewModel())
        }
    }
}
