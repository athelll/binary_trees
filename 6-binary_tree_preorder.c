#include "binary_trees.h"

/**
 * binary_tree_preorder - traverses a binary tree in preorder manner
 * @tree: pointer to root node
 * @func: pointer to printing function
 *
 * Description:
 * 1) visits tree node and process it data
 * 2) recursively traverse through left-subtree->apply same preorder process
 * 3) recursively traverse through right-subtree->apply same preorder process
 * Preorder: node->left->right
 */
void binary_tree_preorder(const binary_tree_t *tree, void (*func)(int))
{
	if (!tree || !func)
		return;

	func(tree->n);
	binary_tree_preorder(tree->left, func);
	binary_tree_preorder(tree->right, func);
}
