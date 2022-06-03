import Foundation

/*
 
 Q5. Postorder Traversal
 
 Problem Description

 Given a binary tree, return the Postorder traversal of its nodes' values.

 NOTE: Using recursion is not allowed.



 Problem Constraints

 1 <= number of nodes <= 105



 Input Format

 First and only argument is root node of the binary tree, A.



 Output Format

 Return an integer array denoting the Postorder traversal of the given binary tree.



 Example Input

 Input 1:

    1
     \
      2
     /
    3
 Input 2:

    1
   / \
  6   2
     /
    3


 Example Output

 Output 1:

  [3, 2, 1]
 Output 2:

  [6, 3, 2, 1]


 Example Explanation

 Explanation 1:

  The Preoder Traversal of the given tree is [3, 2, 1].
 Explanation 2:

  The Preoder Traversal of the given tree is [6, 3, 2, 1].
 */


extension TreeNode: CustomStringConvertible {
    
    public var description: String {
        guard let left = left else {
            return "\(data)"
        }
        guard let right = right else {
            return "\(data)"
        }
        
        return "(\(data) -> " + String(describing: left) + " ^ " + String(describing: right) + " )"
    }
    
    
}


class TreeNode {
    
    let data : Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(data: Int,left: TreeNode? = nil,right: TreeNode? = nil) {
        self.data = data
        self.left = left
        self.right = right
    }
}



let first = TreeNode(data: 1)
let second = TreeNode(data: 2)
let third = TreeNode(data: 3)
let fourth = TreeNode(data: 4)
let fifth = TreeNode(data: 5)
let sixth = TreeNode(data: 6)
let seventh = TreeNode(data: 7)
let eth = TreeNode(data: 8)
let nth = TreeNode(data: 9)
let tth = TreeNode(data: 10)
let elth = TreeNode(data: 11)



var root = TreeNode(data: 1,left: second,right: third)

second.left = fourth
second.right = fifth

third.left = sixth
third.right = seventh


fourth.left = eth
fourth.right = nth

seventh.left = tth
seventh.right = elth

print(root)



func postorderTraversal(_ A: TreeNode?) -> [Int] {
    var array = [Int]()
    postorder(A)
    
    func postorder(_ root: TreeNode?) {
        if root == nil {
            return
        }
        postorder(root?.left)
        postorder(root?.right)
        array.append(root!.data)

    }
    return array
    
}
print(postorderTraversal(root))
