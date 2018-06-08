//
//  Stack.swift
//  Algoritms
//
//  Created by Вадим Чистяков on 07.06.2018.
//  Copyright © 2018 Вадим Чистяков. All rights reserved.
//

import UIKit


class Node<Template> : NSObject {
	var string : Template?
	var next : Node?
}

class Stack<Template>: NSObject {

	var first : Node<Template>?
	
	
	func isEmpty() -> Bool {
		return first == nil
	}
	
	func push(_ input: Template) {
		let oldFirst = first
		first = Node()
		first?.next = oldFirst
		first!.string = input
		print(input)
	}
	
	func pop() -> Template {
		
		let outputString = first!.string
		first = first?.next
		return outputString!
	}
	
	func example() {
		
		let stack = Stack<String>()
		
		stack.push("one")
		stack.push("two")
		stack.push("three")
		print(stack.isEmpty())
		print(stack.pop())
		print(stack.pop())
		stack.push("four")
		print(stack.pop())
		print(stack.isEmpty())
	}

}
