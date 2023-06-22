#include "binary_trees.h"

/**
 * binary_tree_is_root - checks if a node is a root
 * @node: node to check
 * Return: returns 1 if node is a root, otherwise 0.
 */
int binary_tree_is_root(const binary_tree_t *node)
{
	int is_root;

	if (!node)
		return (0);

	is_root = (node->parent == NULL) ? 1 : 0;
	return (is_root);
}
