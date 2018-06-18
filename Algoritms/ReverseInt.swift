//
//  ReverseInt.swift
//  Algoritms
//
//  Created by Вадим Чистяков on 17.06.2018.
//  Copyright © 2018 Вадим Чистяков. All rights reserved.
//

import UIKit

class ReverseInt: NSObject {

	static func reverse(_ x: Int) -> Int {
		var copyX = x
		var reverseInt = 0
		while copyX != 0 {
			reverseInt = reverseInt * 10 + (copyX % 10)
			copyX = copyX / 10
		}
		return (reverseInt > Int32.max || reverseInt < Int32.min) ? 0 : reverseInt
	}
}
