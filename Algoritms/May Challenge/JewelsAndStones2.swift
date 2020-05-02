//
//  JewelsAndStones2.swift
//  Algoritms
//
//  Created by Чистяков Вадим Евгеньевич on 02.05.2020.
//  Copyright © 2020 Вадим Чистяков. All rights reserved.
//

class JewelsAndStones2 {

    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var counter = 0

        for stone in S {
            for jewel in J {
                if stone == jewel {
                    counter += 1
                    break
                }
            }
        }

        return counter
    }
}
