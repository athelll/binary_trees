#include "binary_trees.h"

/**
 * get_max - gets the maximum value in Binary Tree
 * @node: tree-node to get the max value of.
 * Return: returns max value.
 */
int get_max(const binary_tree_t *node)
{
	int left, right;
	int max;

	if (!node)
		return (0);

	left = get_max(node->left);
	right = get_max(node->right);

	max = 0;

	if (right > left)
		max = right;
	else
		max = left;

	if (node->n > max)
		max = node->n;

	return (max);
}

/**
 * get_min - gets the minimum value of a Binary tree.
 * @node: tree-node to get the min value from.
 * Return: returns the minimum node.
 * NOTE: this function is accurate as long as the
 * minimum node is less than 1,000,000. could have made
 * reaching the leaf node return get_max(node) but due
 * to recursion, node is dynamically changing.
 */
int get_min(const binary_tree_t *node)
{
	int left, right;
	int min;

	if (!node)
		return (1000000);

	left = get_min(node->left);
	right = get_min(node->right);

	min = 0;

	if (left < right)
		min = left;
	else
		min = right;

	if (node->n < min)
		min = node->n;

	return (min);
}

/**
 * binary_tree_is_bst - checks if a binary tree is a valid Binary Search Tree
 * @tree: root node to examine from
 * Return: 1 if a BST 0 if not.
 *
 * Description:
 * Recursively checks if, for all nodes, the key of a node is less than
 * all keys in its right branch but greater than all keys in its left branch.
 */
int binary_tree_is_bst(const binary_tree_t *tree)
{
	if (!tree)
		return (1);

	if (tree->left && tree->n < get_max(tree->left))
		return (0);

	if (tree->right && tree->n > get_min(tree->right))
		return (0);

	/** if either left or right at any point returns 0 meaning not BST **/
	if (!binary_tree_is_bst(tree->left) || !binary_tree_is_bst(tree->right))
		return (0);

	return (1);
}
