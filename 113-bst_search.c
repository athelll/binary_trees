#include "binary_trees.h"

/**
 * bst_search - searches for a node in a BST
 * @tree: root node to search from.
 * @value: value in search of.
 * Return: retuns the node with such value.
 */
bst_t *bst_search(const bst_t *tree, int value)
{
	if (!tree || tree->n == value)
		return ((bst_t *) tree);

	if (value < tree->n)
		return (bst_search(tree->left, value));
	else
		return (bst_search(tree->right, value));
}
