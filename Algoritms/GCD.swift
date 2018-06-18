//
//  CGD.swift
//  Algoritms
//
//  Created by Вадим Чистяков on 16.06.2018.
//  Copyright © 2018 Вадим Чистяков. All rights reserved.
//

import UIKit

class GCD: NSObject {

	static func example()  {
		
		print("1")
		
		DispatchQueue.global().async {
			print("2")
		}
		
		print("3")
		
		DispatchQueue.global().sync {
			print("4")
		}
		
		DispatchQueue.global().async {
			print("5")
			DispatchQueue.global().sync {
				print("6")
			}
		}
	}
	
	static func example2()  {
		
		DispatchQueue.global().async {
			print("10")
		}
		DispatchQueue.global().async {
			print("20")
		}
		DispatchQueue.global().async {
			print("30")
		}
		DispatchQueue.global().async {
			print("40")
		}
		DispatchQueue.global().async {
			print("50")
		}
	}
}
