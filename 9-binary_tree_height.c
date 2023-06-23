#include "binary_trees.h"

/**
 * binary_tree_height_plusone - measures the height of a binary tree + 1
 * because it counts root node.
 *
 * @tree: pointer to tree
 * Return: returns the height of tree.
 */
size_t binary_tree_height_plusone(const binary_tree_t *tree)
{
	size_t left, right;

	if (!tree)
		return (0);

	left =	1 + binary_tree_height_plusone(tree->left);
	right = 1 + binary_tree_height_plusone(tree->right);

	return (left > right ? left : right);
}

/**
 * binary_tree_height - measures the height of a binary tree
 * @tree: pointer to tree
 * Return: returns the height of tree.
 */
size_t binary_tree_height(const binary_tree_t *tree)
{
	if (!tree)
		return (0);

	return (binary_tree_height_plusone(tree) - 1);
}
