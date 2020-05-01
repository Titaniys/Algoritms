//
//  FunctionalExamples.swift
//  Algoritms
//
//  Created by Чистяков Вадим Евгеньевич on 01.05.2020.
//  Copyright © 2020 Вадим Чистяков. All rights reserved.
//

import UIKit

final class FunctionalExamples {

    let words = ["Cat", "Chicken", "fish", "Dog",
                "Mouse", "Guinea Pig", "monkey"]

    typealias Entry = (Character, [String])

    func buildIndex(words: [String]) -> [Entry] {
        return words.map { $0.upperFirst }
            .distinct()
            .map { letter in (letter, words.filter { $0.upperFirst == letter }) }
            .sorted { $0.0 < $1.0 }
    }
}

extension Array where Element: Equatable {
    func distinct() -> [Element] {
      var unique = [Element]()
      for item in self {
        if !unique.contains(item) {
          unique.append(item)
        }
      }
      return unique
    }
}

extension String {
    var upperFirst: Character {
        return uppercased().first!
    }
}
