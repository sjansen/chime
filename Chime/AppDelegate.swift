//
//  Copyright © 2019. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate
{
    var popover = NSPopover.init()
    var statusBar: StatusBarController?

    func applicationDidFinishLaunching(_ aNotification: Notification)
    {
        let path = Bundle.main.path(forResource: "mallet.wav", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        let contentView = ContentView(audioURL: url)

        popover.contentViewController = MainViewController()
        popover.contentSize = NSSize(width: 100, height: 100)
        popover.contentViewController?.view = NSHostingView(rootView: contentView)
        
        statusBar = StatusBarController.init(popover)
    }

    func applicationWillTerminate(_ aNotification: Notification)
    {
    }
}

