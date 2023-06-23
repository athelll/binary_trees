#include "binary_trees.h"

/**
 * binary_tree_postorder - traverses a binary tree in postorder manner
 * @tree: pointer to root node
 * @func: pointer to printing function
 *
 * Description:
 * 1) recursively traverse through left-subtree->apply same postorder process
 * 2) recursively traverse through right-subtree->apply same postorder process
 * 3) visits tree node and process it data
 * postorder: left->right->node
 */
void binary_tree_postorder(const binary_tree_t *tree, void (*func)(int))
{
	if (!tree || !func)
		return;

	binary_tree_postorder(tree->left, func);
	binary_tree_postorder(tree->right, func);
	func(tree->n);
}
