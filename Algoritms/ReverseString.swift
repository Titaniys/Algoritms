//
//  ReverseString.swift
//  Algoritms
//
//  Created by Вадим Чистяков on 19.06.2018.
//  Copyright © 2018 Вадим Чистяков. All rights reserved.
//

import UIKit

class ReverseString: NSObject {

	static func reverseString(_ str: String) -> String {
		
		guard str.count > 1 else {
			return str
		}
		var arrayStr = Array(str)
		let maxIndex = arrayStr.count - 1
		var reverseStr = [Character]()
		
		for i in 0...maxIndex {
			reverseStr[i] = arrayStr[maxIndex - i]
		}
		return String(reverseStr)

	}
}
