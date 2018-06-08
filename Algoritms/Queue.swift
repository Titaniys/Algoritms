//
//  Queue.swift
//  Algoritms
//
//  Created by Вадим Чистяков on 07.06.2018.
//  Copyright © 2018 Вадим Чистяков. All rights reserved.
//

import UIKit

class Queue<Template>: NSObject {
	
	var first, last : Node<Template>?
	
	func Enqueue(_ input: Template) {
		let oldLast = last
		last = Node()
		last?.string = input
		last?.next = nil
		if isEmpty() {
			first = last
		} else {
			oldLast?.next = last
		}
		
	}
	
	func Dequeue() -> Template {
		let output = first?.string
		first = first?.next
		if isEmpty() {
			last = nil
		}
		return output!
	}
	
	func isEmpty() -> Bool {
		return first == nil
	}
	
	
}
