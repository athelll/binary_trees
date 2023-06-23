#include "binary_trees.h"

/**
 * binary_tree_sibling - finds the sibling of a node
 * @node: node to get sibling
 * Return: returns pointer to sibling or returns NULL
 * on failure or if no sibling found.
 */
binary_tree_t *binary_tree_sibling(binary_tree_t *node)
{
	if (!node || node->parent == NULL)
		return (NULL);

	if (node->parent->left == node)
		return (node->parent->right);

	if (node->parent->right == node)
		return (node->parent->left);

	return (NULL);
}
