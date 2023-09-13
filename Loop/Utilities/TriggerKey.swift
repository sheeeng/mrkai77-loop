//
//  LoopTriggerKeys.swift
//  Loop
//
//  Created by Kai Azim on 2023-06-19.
//

import Foundation
import Defaults
import CoreGraphics

struct TriggerKey: Codable, Hashable, Defaults.Serializable {
    var name: String
    var symbol: String
    var keySymbol: String
    var keycode: CGKeyCode

    static let options: [TriggerKey] = [
        TriggerKey(
            name: "Globe",
            symbol: "globe",
            keySymbol: "custom.globe.rectangle.fill",
            keycode: .kVK_Function
        ),
        TriggerKey(
            name: "Left Control",
            symbol: "control",
            keySymbol: "custom.control.rectangle.fill",
            keycode: .kVK_Control
        ),
        TriggerKey(
            name: "Right Control",
            symbol: "control",
            keySymbol: "custom.control.rectangle.fill",
            keycode: .kVK_RightControl
        ),
        TriggerKey(
            name: "Left Option",
            symbol: "option",
            keySymbol: "custom.option.rectangle.fill",
            keycode: .kVK_Option
        ),
        TriggerKey(
            name: "Right Option",
            symbol: "option",
            keySymbol: "custom.option.rectangle.fill",
            keycode: .kVK_RightOption
        ),
        TriggerKey(
            name: "Left Command",
            symbol: "command",
            keySymbol: "custom.command.rectangle.fill",
            keycode: .kVK_Command
        ),
        TriggerKey(
            name: "Right Command",
            symbol: "command",
            keySymbol: "custom.command.rectangle.fill",
            keycode: .kVK_RightCommand
        )
    ]
}
