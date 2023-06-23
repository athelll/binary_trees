#include "binary_trees.h"

/**
 * binary_tree_nodes - function counts nodes with at least one child
 * @tree: pointer to tree
 * Return: returns the nodes count
 */
size_t binary_tree_nodes(const binary_tree_t *tree)
{
	size_t left, right;

	if (!tree)
		return (0);

	left = binary_tree_nodes(tree->left);
	right = binary_tree_nodes(tree->right);

	if (tree->left || tree->right)
		return (left + right + 1);

	return (0);
}
