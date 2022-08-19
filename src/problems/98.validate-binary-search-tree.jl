# ---
# title: 98. Validate Binary Search Tree
# id: problem98
# author: Indigo
# date: 2021-06-02
# difficulty: Medium
# categories: Tree, Depth-first Search, Recursion
# link: <https://leetcode.com/problems/validate-binary-search-tree/description/>
# hidden: true
# ---
# 
# Given the `root` of a binary tree, _determine if it is a valid binary search
# tree (BST)_.
# 
# A **valid BST** is defined as follows:
# 
#   * The left subtree of a node contains only nodes with keys **less than** the node's key.
#   * The right subtree of a node contains only nodes with keys **greater than** the node's key.
#   * Both the left and right subtrees must also be binary search trees.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/12/01/tree1.jpg)
# 
#     
#     
#     Input: root = [2,1,3]
#     Output: true
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/12/01/tree2.jpg)
# 
#     
#     
#     Input: root = [5,1,4,null,null,3,6]
#     Output: false
#     Explanation: The root node's value is 5 but its right child's value is 4.
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the tree is in the range `[1, 104]`.
#   * `-231 <= Node.val <= 231 - 1`
# 
# 
## @lc code=start
using LeetCode

function is_valid_BST(root)
    isnothing(root) && return true
    arr = Int[]
    function pre_tra(root::TreeNode{Int})
        pre_tra(root.left)
        push!(arr, root.val)
        return pre_tra(root.right)
    end
    pre_tra(::Nothing) = nothing
    pre_tra(root)
    return issorted(arr; lt=!isless, rev=true)
end
## @lc code=end