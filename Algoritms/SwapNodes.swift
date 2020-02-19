//
//  SwapNodes.swift
//  Algoritms
//
//  Created by Чистяков Вадим Евгеньевич on 18.02.2020.
//  Copyright © 2020 Вадим Чистяков. All rights reserved.
//
// https://www.hackerrank.com/challenges/swap-nodes-algo

import Foundation

class SwapNodes {

    func swapNodes(indexes: [[Int]], queries: [Int]) -> [[Int]] {

        return [[1]]
    }

}

//https://www.hackerrank.com/challenges/ctci-queue-using-two-stacks/
final class TaleOfTwoStack {

    private var leftStack = [Int]()
    private var rightStack = [Int]()

    func push(_ element: Int) {
        leftStack.append(element)
    }

func pop() {
        if rightStack.isEmpty {
            rightStack.append(contentsOf: leftStack.reversed())
            leftStack.removeAll()
        }
        rightStack.removeLast()
    }

    func peek() {
        print(rightStack.last ?? "")
    }

}

