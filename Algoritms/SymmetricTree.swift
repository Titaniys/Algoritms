//
//  SymmetricTree.swift
//  Algoritms
//
//  Created by Вадим Чистяков on 18.06.2018.
//  Copyright © 2018 Вадим Чистяков. All rights reserved.
//

import UIKit

public class TreeNode {
	    public var val: Int
		public var left: TreeNode?
		public var right: TreeNode?
		public init(_ val: Int) {
				self.val = val
				self.left = nil
				self.right = nil
		     }
}

class SymmetricTree: NSObject {
	
	func isSymmetric(_ root: TreeNode?) -> Bool {
		return isMirror(root, root)
	}
	
	func isMirror(_ t1 : TreeNode?, _ t2: TreeNode?) -> Bool {
		if t1 == nil && t2 == nil  {
			return true
		}
		if t1 == nil || t2 == nil {
			return false
		}
		return (t1?.val == t2?.val) && isMirror(t1?.left, t2?.right) && isMirror(t1?.right, t2?.left)
	}
}
