# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_unival_tree(root)
    @root_val = root.val
    @is_uni = true
    def check_children (node)
        return if nil
        @is_uni = false if node && node.val != @root_val
        check_children(node.left) if node
        check_children(node.right) if node
    end
    check_children(root)
    return @is_uni
end