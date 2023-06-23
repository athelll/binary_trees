#include "binary_trees.h"

/**
 * get_height - gets height of node either right or left
 * @tree: pointer to tree node
 * Return: returns the height of the node
 */
int get_height(const binary_tree_t *tree)
{
	int right, left;

	if (!tree)
		return (0);

	left = 1 + get_height(tree->left);
	right = 1 + get_height(tree->right);

	return (left > right ? left : right);
}

/**
 * binary_tree_balance - calculates the balance factors of a binary tree
 * @tree: pointer to tree
 * Return: returns the balance factor
 */
int binary_tree_balance(const binary_tree_t *tree)
{
	int right, left;

	if (!tree)
		return (0);

	left = get_height(tree->left);
	right = get_height(tree->right);

	return (left - right);
}
