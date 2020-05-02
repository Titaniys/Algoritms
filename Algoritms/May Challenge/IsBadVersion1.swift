//
//  IsBadVersion1.swift
//  Algoritms
//
//  Created by Чистяков Вадим Евгеньевич on 01.05.2020.
//  Copyright © 2020 Вадим Чистяков. All rights reserved.
//

import UIKit

class VersionControl {
    func isBadVersion(_ version: Int) -> Bool {
        return true // Array
    }
}

class IsBadVersion1: VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var leftBoarder = 1
        var rightBoarder = n
        var result = -1
        if n == 1 { return 1 }
        while leftBoarder <= rightBoarder {
            let middle = leftBoarder + (rightBoarder - leftBoarder) / 2
            if !isBadVersion(middle) {
                leftBoarder = middle + 1
            } else {
                result = middle
                rightBoarder = middle - 1
            }
        }
        return result
    }
}
