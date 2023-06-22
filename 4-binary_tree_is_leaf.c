#include "binary_trees.h"

/**
 * binary_tree_is_leaf - checks if a node is a leaf
 * @node: node to check
 * Return: returns 1 if node is a leaf, otherwise 0.
 */
int binary_tree_is_leaf(const binary_tree_t *node)
{
	int is_leaf;

	if (!node)
		return (0);

	is_leaf = (node->left == NULL && node->right == NULL) ? 1 : 0;
	return (is_leaf);
}
