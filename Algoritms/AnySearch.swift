//
//  AnySearch.swift
//  Algoritms
//
//  Created by Вадим Чистяков on 16.06.2018.
//  Copyright © 2018 Вадим Чистяков. All rights reserved.
//

import UIKit

class AnySearch: NSObject {

}

class BinarySerch {
	
	/// Бинарный поиск
	///
	/// - Parameters:
	///   - array: упорядоченный массив интов
	///   - searchIndex: искомый элемент
	/// - Returns: найденый индекс или -1
	func binarySearch(array: Array<Int>, searchElement: Int) -> Int {
		var lo = 0
		var hi = array.count - 1
		
		while lo <= hi {
			let mid = lo + (hi - lo) / 2
			if (searchElement < array[mid]) {
				hi = mid - 1
			} else if (searchElement > array[mid]) {
				lo = mid + 1
			} else {
				return mid
			}
		}
		return -1
	}
}
