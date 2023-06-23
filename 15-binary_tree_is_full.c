#include "binary_trees.h"

/**
 * binary_tree_is_full - checks if binary tree node is full
 * @tree: pointer to node to check
 * Return: return 1 if full, 0 if not.
 */
int binary_tree_is_full(const binary_tree_t *tree)
{
	if (!tree)
		return (0);

	if (tree->left == NULL && tree->right == NULL)
		return (1);

	if (tree->left && tree->right)
		return (binary_tree_is_full(tree->left) && binary_tree_is_full(tree->right));

	return (0);
}
