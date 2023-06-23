#include "binary_trees.h"

/**
 * binary_tree_leaves - returns the number of leaves in a
 * binary tree.
 * @tree: pointer to tree
 * Return: returns number of leaves
 */
size_t binary_tree_leaves(const binary_tree_t *tree)
{
	size_t left, right;

	if (!tree)
		return (0);

	if (tree->left == NULL && tree->right == NULL)
		return (1);

	left = binary_tree_leaves(tree->left);
	right = binary_tree_leaves(tree->right);

	return (left + right);
}
