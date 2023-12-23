//
//  AppDelegate.swift
//  Loop
//
//  Created by Kai Azim on 2023-10-05.
//

import SwiftUI
import Defaults

class AppDelegate: NSObject, NSApplicationDelegate {

    private let loopManager = LoopManager()
    private let windowDragManager = WindowDragManager()

    func applicationDidFinishLaunching(_ notification: Notification) {
        NSApp.setActivationPolicy(.accessory)

        // Check & ask for accessibility access
        PermissionsManager.Accessibility.requestAccess()

        IconManager.refreshCurrentAppIcon()
        loopManager.startObservingKeys()
        windowDragManager.addObservers()
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        NSApp.setActivationPolicy(.accessory)
        for window in NSApp.windows where window.delegate != nil {
            window.delegate = nil
        }
        return false
    }
}
