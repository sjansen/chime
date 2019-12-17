//
//  Chime
//
//  Created by Stuart Jansen on 12/15/19.
//  Copyright © 2019 buscaluz.org. All rights reserved.
//

import AppKit
import AVFoundation
import SwiftUI

struct ContentView: View {
    var audioURL: URL
    
    @ObservedObject var audioPlayer = AudioPlayer()
    
    var body: some View {
        VStack(spacing: 0) {
            Button(action: {
                self.audioPlayer.startPlayback(audio: self.audioURL)
            })
            {
                Text("Play")
                .font(.caption)
                .fontWeight(.semibold)
            }
            .padding(.horizontal, 10.0)
            .padding(.vertical, 10.0)
            .frame(width: 100.0, height: 60.0, alignment: .center)
            Button(action: {
                NSApplication.shared.terminate(self)
            })
            {
                Text("Quit")
                .font(.caption)
                .fontWeight(.semibold)
            }
            .padding(.trailing, 10.0)
            .frame(width: 100.0, alignment: .trailing)
        }
        .padding(0)
        .frame(width: 100.0, height: 100.0, alignment: .top)
    }
}
