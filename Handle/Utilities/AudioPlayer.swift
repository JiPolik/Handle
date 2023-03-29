//
//  AudioPlayer.swift
//  Handle
//
//  Created by  Oleksandr Polishchuk on 28.03.2023.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, extensionType: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: extensionType) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}
