
import Foundation

/*
 
 Q1. Valid Binary Search Tree
 
 Problem Description
 You are given a binary tree represented by root A.
 
 Assume a BST is defined as follows:
 
 1) The left subtree of a node contains only nodes with keys less than the node's key.
 
 2) The right subtree of a node contains only nodes with keys greater than the node's key.
 
 3) Both the left and right subtrees must also be binary search trees.
 
 
 
 Problem Constraints
 1 <= Number of nodes in binary tree <= 105
 
 0 <= node values <= 109
 
 
 
 Input Format
 First and only argument is head of the binary tree A.
 
 
 
 Output Format
 Return 0 if false and 1 if true.
 
 
 
 Example Input
 Input 1:
 
 
 1
 /  \
 2    3
 Input 2:
 
 
 2
 / \
 1   3
 
 
 Example Output
 Output 1:
 
 0
 Output 2:
 
 1
 
 
 Example Explanation
 Explanation 1:
 
 2 is not less than 1 but is in left subtree of 1.
 Explanation 2:
 
 Satisfies all conditions.
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



let first = TreeNode(val: 2)
let second = TreeNode(val: 1)
let third = TreeNode(val: 3)
let fourth = TreeNode(val: 4)
let fifth = TreeNode(val: 5)
let sixth = TreeNode(val: 6)
let seventh = TreeNode(val: 7)
let eth = TreeNode(val: 8)
let nth = TreeNode(val: 9)
let tth = TreeNode(val: 10)
let elth = TreeNode(val: 11)



var root = TreeNode(val: 2,left: second,right: third)

//second.left = fourth
//second.right = fifth
//
//third.left = sixth
//third.right = seventh
//
//
//fourth.left = eth
//fourth.right = nth
//
//seventh.left = tth
//seventh.right = elth

print(root)



func isValidBST(_ A: TreeNode?) -> Int {
    
    func isValidBST(_ root: TreeNode?,_ range: (left: Int,right: Int)) -> Bool {
        if root == nil {
            return true
        }
        guard root!.val >= range.left && root!.val <= range.right else {
            return false
        }
        return isValidBST(root?.left,(left: range.left,right: root!.val - 1)) && isValidBST(root?.right,(left: root!.val + 1,right: range.right))
    }
    
    if isValidBST(A, (left: Int.min,right: Int.max)) {
        return 1
    }
    return 0
    
}
print(isValidBST(root))
