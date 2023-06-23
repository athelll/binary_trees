#include "binary_trees.h"

/**
 * binary_tree_height - measures the height of a binary tree
 * @tree: pointer to tree
 * Return: returns the height of tree.
 */
size_t binary_tree_height(const binary_tree_t *tree)
{
	size_t left, right;

	if (!tree)
		return (-1);

	left =	1 + binary_tree_height(tree->left);
	right = 1 + binary_tree_height(tree->right);

	return (left > right ? left : right);
}
