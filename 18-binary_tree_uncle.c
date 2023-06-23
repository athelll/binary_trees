#include "binary_trees.h"

/**
 * binary_tree_uncle - returns the uncle od such node
 * @node: pointer to node to find uncle
 * Return: returns pointer to uncle or NULL if none.
 */
binary_tree_t *binary_tree_uncle(binary_tree_t *node)
{
	binary_tree_t *father;

	if (!node || !(node->parent->parent))
		return (NULL);

	father = node->parent;

	if (father->parent->left == father)
		return (father->parent->right);

	if (father->parent->right == father)
		return (father->parent->left);

	return (NULL);
}
