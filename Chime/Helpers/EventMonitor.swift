//
//  Chime
//
//  Created by Stuart Jansen on 12/15/19.
//  Copyright © 2019 buscaluz.org. All rights reserved.
//

import Cocoa

class EventMonitor
{
    private var monitor: Any?
    private let mask: NSEvent.EventTypeMask
    private let handler: (NSEvent?) -> Void
    
    public init(mask: NSEvent.EventTypeMask, handler: @escaping (NSEvent?) -> Void)
    {
      self.mask = mask
      self.handler = handler
    }

    deinit
    {
      stop()
    }

    public func start()
    {
        monitor = NSEvent.addGlobalMonitorForEvents(matching: mask, handler: handler) as! NSObject
    }

    public func stop()
    {
      if monitor != nil
      {
        NSEvent.removeMonitor(monitor!)
        monitor = nil
      }
    }
}
