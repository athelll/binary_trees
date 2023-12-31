#include "binary_trees.h"

/**
 * binary_tree_node - creates a binary tree node
 * @parent: parent of node;
 * @value: integer data that node holds
 * Return: returns pointer to newly created node
 */
binary_tree_t *binary_tree_node(binary_tree_t *parent, int value)
{
	binary_tree_t *node;

	node = malloc(sizeof(binary_tree_t));
	if (!node)
		return (NULL);

	node->n = value;
	node->parent = parent;
	node->left = NULL;
	node->right = NULL;

	return (node);
}
