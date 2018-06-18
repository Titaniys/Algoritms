//
//  TwoSum.swift
//  Algoritms
//
//  Created by Вадим Чистяков on 18.06.2018.
//  Copyright © 2018 Вадим Чистяков. All rights reserved.
//

import UIKit

class TwoSum: NSObject {
	
	static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
			for firstIndex in 0...nums.count - 1 {
				for secondIndex in (firstIndex + 1)...nums.count - 1 {
					if nums[firstIndex] + nums[secondIndex] == target {
						return [firstIndex, secondIndex]
					}
				}
			}
			return [0];
	}
}
