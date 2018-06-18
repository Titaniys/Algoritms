//
//  Palindrom.swift
//  Algoritms
//
//  Created by Вадим Чистяков on 16.06.2018.
//  Copyright © 2018 Вадим Чистяков. All rights reserved.
//

import UIKit

class Palindrom: NSObject {

}

class PalindromInt: NSObject {
	
	static func isPalindromInt(_ x: Int) -> Bool {
		var copyX = x
		if x < 0 || (x % 10 == 0 && x != 0) {
			return false
		}
		
		var revertNumber = 0
		while copyX > revertNumber {
			revertNumber = revertNumber * 10 + copyX % 10
			copyX = copyX / 10
		}
		return copyX == revertNumber || copyX == revertNumber / 10
	}
}
