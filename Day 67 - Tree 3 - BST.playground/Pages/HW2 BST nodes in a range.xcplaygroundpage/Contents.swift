
import Foundation


/*
 Q2. BST nodes in a range
 
 Problem Description
 Given a binary search tree of integers. You are given a range B and C.

 Return the count of the number of nodes that lie in the given range.



 Problem Constraints
 1 <= Number of nodes in binary tree <= 100000

 0 <= B < = C <= 109



 Input Format
 First argument is a root node of the binary tree, A.

 Second argument is an integer B.

 Third argument is an integer C.



 Output Format
 Return the count of the number of nodes that lies in the given range.



 Example Input
 Input 1:

             15
           /    \
         12      20
         / \    /  \
        10  14  16  27
       /
      8

      B = 12
      C = 20
 Input 2:

             8
            / \
           6  21
          / \
         1   7

      B = 2
      C = 20
 */


extension TreeNode: CustomStringConvertible {
    
    public var description: String {
        guard let left = left else {
            return "\(val)"
        }
        guard let right = right else {
            return "\(val)"
        }
        
        return "(\(val) -> " + String(describing: left) + " ^ " + String(describing: right) + " )"
    }
    
    
}


class TreeNode {
    
    let val : Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(val: Int,left: TreeNode? = nil,right: TreeNode? = nil) {
        self.val = val
        self.left = left
        self.right = right
    }
}



let first = TreeNode(val: 1)
let second = TreeNode(val: 2)
let third = TreeNode(val: 3)
let fourth = TreeNode(val: 4)
let fifth = TreeNode(val: 5)
let sixth = TreeNode(val: 6)
let seventh = TreeNode(val: 7)
let eth = TreeNode(val: 8)
let nth = TreeNode(val: 9)
let tth = TreeNode(val: 10)
let elth = TreeNode(val: 11)



var root = TreeNode(val: 1,left: second,right: third)

second.left = fourth
second.right = fifth

third.left = sixth
third.right = seventh


fourth.left = eth
fourth.right = nth

seventh.left = tth
seventh.right = elth

print(root)



func nodesInRange(_ A: TreeNode?, _ B: inout Int, _ C: inout Int) -> Int {

    var count = 0

    preorder(A)
    func preorder(_ root: TreeNode?) {
        if root == nil {
            return
        }
        if root!.val >= B && root!.val <= C {
            count += 1
        }
        preorder(root?.left)
        preorder(root?.right)
    }
    return count
    
   
}

var B = 4, C = 5
print(nodesInRange(root,&B,&C))
