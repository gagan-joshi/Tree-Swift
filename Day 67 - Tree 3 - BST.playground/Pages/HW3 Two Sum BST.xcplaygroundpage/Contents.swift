
import Foundation

/*
 Problem Description
 Given a binary search tree A, where each node contains a positive integer, and an integer B, you have to find whether or not there exist two different nodes X and Y such that X.value + Y.value = B.

 Return 1 to denote that two such nodes exist. Return 0, otherwise.



 Problem Constraints
 1 <= size of tree <= 100000

 1 <= B <= 109



 Input Format
 First argument is the head of the tree A.

 Second argument is the integer B.



 Output Format
 Return 1 if such a pair can be found, 0 otherwise.



 Example Input
 Input 1:

          10
          / \
         9   20

 B = 19
 Input 2:

  
           10
          / \
         9   20

 B = 40


 Example Output
 Output 1:

  1
 Output 2:

  0


 Example Explanation
 Explanation 1:

  10 + 9 = 19. Hence 1 is returned.
 Explanation 2:

  No such pair exists.

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
let nth = TreeNode(val: 22)
let tth = TreeNode(val: 223)
let elth = TreeNode(val: 222)



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



func t2Sum(_ A: TreeNode?, _ B: inout Int) -> Int {

    var dict = [Int : Int]()
    var found = 0
    preorder(A)
    
    
    func preorder(_ root: TreeNode?) {
        if root == nil {
            return
        }
        let value = root!.val
        if dict[B - value] != nil {
            found = 1
            return
        }
        dict[value] = 1
        preorder(root?.left)
        preorder(root?.right)
    }
    return found
    
  
    
}


func t2Sum_UsingArray(_ A: TreeNode?, _ B: inout Int) -> Int {

   
    
    var array = [Int]()
    preorder(A)
    
    func preorder(_ root: TreeNode?) {
        if root == nil {
            return
        }
        preorder(root?.left)
        array.append(root!.val)
        preorder(root?.right)
    }

    var start = 0, end = array.count - 1
    while start < end {
        
        if array[start] + array[end] == B {
            return 1
        }
        else if array[start] + array[end] < B {
            start += 1
        }
        else {
            end -= 1
        }
        
    }
    
    return 0
}



var B = 15
print(t2Sum(root, &B))
