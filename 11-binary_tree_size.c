#include "binary_trees.h"

/**
 * binary_tree_size - returns the size of a binary tree;
 * @tree: pointer to tree
 * Return: returns the size of tree.
 */
size_t binary_tree_size(const binary_tree_t *tree)
{
	size_t left, right;

	if (!tree)
		return (0);

	left = binary_tree_size(tree->left);
	right = binary_tree_size(tree->right);
	return (left + right + 1);
}
