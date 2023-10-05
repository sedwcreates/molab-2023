//
//  ContentView.swift
//  SoundPlayer
//
//  Created by Sophia Edwards on 10/5/23.
//

import SwiftUI
import AVFoundation

let bundleAudio = [
    "driving.wav",
    "dog_bark.wav",
    "cooking.wav",
    "river.wav"
];

func loadBundleAudio(_ fileName:String) -> AVAudioPlayer? {
    let path = Bundle.main.path(forResource: fileName, ofType:nil)!
    let url = URL(fileURLWithPath: path)
    do {
        return try AVAudioPlayer(contentsOf: url)
    } catch {
        print("loadBundleAudio error", error)
    }
    return nil
}

struct PlayAudioView: View {
    @State private var soundIndex = 0
    @State private var soundFile = bundleAudio[0]
    @State private var player: AVAudioPlayer? = nil
    var body: some View {
        TimelineView(.animation) { context in
            VStack {
                HStack {
                    Button("Play") {
                        print("Button Play")
                        player = loadBundleAudio(soundFile)
                        print("player", player as Any)
                        // Loop indefinitely
                        player?.numberOfLoops = -1
                        player?.play()
                    }
                    Button("Stop") {
                        print("Button Stop")
                        player?.stop()
                    }
                    Button("Next") {
                        soundIndex = (soundIndex+1) % bundleAudio.count
                        soundFile = bundleAudio[soundIndex];
                    }
                }
                Text("soundIndex \(soundIndex)")
                Text("soundFile \(soundFile)")
                if let player = player {
                    Text("duration " + String(format: "%.1f", player.duration))
                    Text("currentTime " + String(format: "%.1f", player.currentTime))
                }
            }
        }
    }
}

struct Page1_Previews: PreviewProvider {
    static var previews: some View {
        PlayAudioView()
    }
}
