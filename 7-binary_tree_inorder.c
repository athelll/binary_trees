#include "binary_trees.h"

/**
 * binary_tree_inorder - traverses a binary tree in inorder manner
 * @tree: pointer to root node
 * @func: pointer to printing function
 *
 * Description:
 * 1) recursively traverse through left-subtree->apply same inorder process
 * 2) visits tree node and process it data
 * 3) recursively traverse through right-subtree->apply same inorder process
 * Inorder: left->node->right
 */
void binary_tree_inorder(const binary_tree_t *tree, void (*func)(int))
{
	if (!tree || !func)
		return;

	binary_tree_inorder(tree->left, func);
	func(tree->n);
	binary_tree_inorder(tree->right, func);
}
