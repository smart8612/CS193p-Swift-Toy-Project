//
//  MemoryTheme.swift
//  CS193p_Assignment_1
//
//  Created by JeongTaek Han on 2021/08/22.
//

import Foundation

struct MemoryTheme {
    
    var name: String
    var numberOfPairs: Int {
        willSet {
            self.numberOfPairs = min(max(0, newValue), emojis.count)
        }
    }
    var color: String
    var emojis: Set<String>
    
    static var themes: [MemoryTheme] = [
        MemoryTheme(name: "Vehicle", numberOfPairs: 4, color: "red",
                    emojis: ["🛸", "🚌", "🏍", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🛻", "🚝"]),
        MemoryTheme(name: "Device", numberOfPairs: 10, color: "green",
                    emojis: ["⌚️", "📱", "💻", "🖥", "🖨", "💾", "📷", "🖱", "⌨️", "💡"]),
        MemoryTheme(name: "Face", numberOfPairs: 10, color: "blue",
                    emojis: ["😀", "🥲", "😜", "😡", "🥺", "😳", "😎", "😄", "🥸", "😍"]),
        MemoryTheme(name: "Animal", numberOfPairs: 10, color: "purple",
                    emojis: ["🐶", "🐱", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼", "🐻‍❄️", "🐨"]),
        MemoryTheme(name: "Food", numberOfPairs: 10, color: "yellow",
                    emojis: ["🍏", "🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🥑"]),
        MemoryTheme(name: "Sport", numberOfPairs: 10, color: "pink",
                    emojis: ["⚽️", "🏀", "🏈", "⚾️", "🥎", "🎾", "🎾", "🏐", "🏉", "🥏"]),
    ]
    
}
