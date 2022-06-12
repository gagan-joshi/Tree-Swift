import Foundation

/*
 
 Q1. Nodes Count

 
 Problem Description
 You are given the root node of a binary tree A. You have to find the number of nodes in this tree.



 Problem Constraints
 1 <= Number of nodes in the tree <= 105

 0 <= Value of each node <= 107



 Input Format
 The first and only argument is a tree node A.



 Output Format
 Return an integer denoting the number of nodes of the tree.



 Example Input
 Input 1:

  Values =  1
           / \
          4   3
 Input 2:

  
  Values =  1
           / \
          4   3
         /
        2


 Example Output
 Output 1:

  3
 Output 2:

  4


 Example Explanation
 Explanation 1:

 Clearly, there are 3 nodes 1, 4 and 3.
 Explanation 2:

 Clearly, there are 4 nodes 1, 4, 3 and 2.
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



func nodesCount(_ A: TreeNode?) -> Int {
    var count = 0
    inorderTraversal(A)
    
    func inorderTraversal(_ root: TreeNode?) {
        if root == nil {
            return
        }
        inorderTraversal(root?.left)
        count += 1
        inorderTraversal(root?.right)
    }
    return count
    
}
print(nodesCount(root))
