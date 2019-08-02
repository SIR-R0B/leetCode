//unfinished

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
 
    func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
        print(L + R)
    }

  var   [10,5,15,3,7,nil,18]

print(rangeSumBST([10,5,15,3,7,nil,18], 7, 15))