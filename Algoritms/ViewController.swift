//
//  ViewController.swift
//  Algoritms
//
//  Created by Вадим Чистяков on 10.05.18.
//  Copyright © 2018 Вадим Чистяков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var navBar: UINavigationBar!
	@IBOutlet weak var navItem: UINavigationItem!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		print(eggDrop(2, 36))
		
		navBar.topItem?.title = "retf"
		navItem.title = "itemTitle"
		
		let array = [1,2,3,6,9,10,14,26,34,36,345,34345,40000,50000]
		let index = self.binarySearch(array: array, searchElement: 340)
		print(index)
	}

	
	/// Палиндром с помощью цикла
	///
	/// - Parameter string: строка
	/// - Returns: палиндром ли?
	func palindrom(_ string: String) -> Bool {
		let startTime = NSDate.timeIntervalSinceReferenceDate
		
		if string.count < 2 {
			return true
		}
		let string = string.lowercased().filter{ $0 != " " }

		for (index, char) in string.enumerated() {
			
			let charRight = string[string.index(string.startIndex, offsetBy: string.count - 1 - index)]
			
			if char !=  charRight {
				return false
			}
			
			if (index == string.count - 1 - index) || (index + 1 == string.count - 1 - index) {
				let finishTime = NSDate.timeIntervalSinceReferenceDate - startTime
				print(finishTime)
				return true
			}
		}
		let finishTime = NSDate.timeIntervalSinceReferenceDate - startTime
		print(finishTime)
		return true
	}


	/// Палиндром с помощью рекурсии
	///
	/// - Parameter str: строка
	/// - Returns: палиндром ли?
	func isPalindrome(_ str: String) -> Bool {
		let strippedString = str.replacingOccurrences(of: "\\W", with: "", options: .regularExpression, range: nil)
		let length = strippedString.count
		
		if length > 1 {
			return palindrome(strippedString.lowercased(), left: 0, right: length - 1)
		}
		
		return false
	}
	
	private func palindrome(_ str: String, left: Int, right: Int) -> Bool {
		if left >= right {
			return true
		}
		
		let lhs = str[str.index(str.startIndex, offsetBy: left)]
		let rhs = str[str.index(str.startIndex, offsetBy: right)]
		
		if lhs != rhs {
			return false
		}
		
		return palindrome(str, left: left + 1, right: right - 1)
	}
	
	//Generic
	func swap<T>(_ x: inout T, _ y: inout T) {
		let temp = x
		x = y
		y = temp
	}
	
	func testFunction()  {
		let isPol = self.palindrom("qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqwertytrewqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq")
		let isPol2 = self.palindrom("qwertytrewq")
		
		print(isPol)
		print(isPol2)
		
		var x = 10
		var y = 15
		
		self.swap(&x, &y)
		
		print("x = ", x)
		print("y = ", y)
		
		var lhs = "left"
		var rhs = "right"
		
		self.swap(&lhs, &rhs)
		
		print("lhs = ", lhs)
		print("rhs = ", rhs)
		
		let tracks = [1, 5, 23, 4, 56]
		let sortTracks = tracks.sorted { $0 < $1 }
		let addTracks = sortTracks.map {$0 + 10}
		print(sortTracks)
		print(addTracks)
		
		let lessThan20 = sortTracks.filter {$0 < 20}
		print(lessThan20)
		
		let total = lessThan20.reduce(0, {$0 + $1})
		print(total)
		
		var str = "Apple"
		let newStr = str.pluralized()
		print(newStr)
		print(str.pluralized())
	}
	
	/// Асинхронная таска
	func testURLSessionFunction()  {
		
		let url = URL(string: "https://www.apple.com")!
		let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
			if let data = data,
				let string = String(data: data, encoding: .utf8) {
					print(string)
			}
		}
		
		task.resume()
		
	}
	
	
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


extension String {
	mutating func pluralized() -> String {
		return self.appending("s")
	}
}


//Задача о подбрасывании яйца (плохая реализация)
extension ViewController {
	
	private func max(_ a: Int, _ b: Int) -> Int {
		let c = a > b
		if c {
			return a
		} else {
			return b
		}
	}
	
	func eggDrop(_ eggs:Int, _ floors:Int) -> Int {
		
		if (floors < 2) {
			return floors
		}
		
		if (eggs == 1) {
			return floors
		}
		
		var res = 0
		var min = floors + 1
		
		
		for index in 1...floors {
			res = max(eggDrop(eggs - 1, index - 1), eggDrop(floors, floors - index))
			if (res < min) {
				min = res
			}
		}
		
		return min + 1
	}
}
