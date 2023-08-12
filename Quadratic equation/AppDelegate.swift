//
//  AppDelegate.swift
//  Quadratic equation
//
//  Created by user on 11.08.2023.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    
    private var mainWindowController: NSWindowController?
        
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        nib()
    }
    
    func nib() {
        let mainWindowController = FirstController(windowNibName: "FirstController")
        mainWindowController.window?.setContentSize(NSSize(width: 700, height: 500))
        mainWindowController.showWindow(self)
        self.mainWindowController = mainWindowController
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
}
