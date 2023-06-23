#include "binary_trees.h"

/**
 * get_height - returns height of binary tree branch either
 * left or right
 * @tree: pointer to tree branch
 * Return: returns the height of branch
 */
int get_height(const binary_tree_t *tree)
{
	int left, right;

	if (!tree)
		return (0);

	left = 1 + get_height(tree->left);
	right = 1 + get_height(tree->right);

	return (left + right);
}

/**
 * get_full - checks if a binary tree is filled up or not
 * @tree: pointer of binary tree to check
 * Return: returns 1 if full 0 if not.
 */
int get_full(const binary_tree_t *tree)
{
	if (!tree)
		return (0);

	if (tree->left == NULL && tree->right == NULL)
		return (1);

	if (tree->left && tree->right)
		return (get_full(tree->right) && get_full(tree->left));

	return (0);
}

/**
 * binary_tree_is_perfect - checks is a binary tree is perfect
 * @tree: pointer of tree to examine
 * Return: returns the 1 if perfect or 0 if not.
 * Description:
 * A binary tree is known to be perfect if the height of the
 * left and right branch of the root node is equal and if all
 * parent nodes are full: all parents have both right and left childs.
 * 1) All nodes must have 2 children except leaf nodes and
 * 2) right and left branches of root node must have equal heights.
 */
int binary_tree_is_perfect(const binary_tree_t *tree)
{
	int full;
	int height_left, height_right, height_ratio;

	height_left = get_height(tree->left);
	height_right = get_height(tree->right);
	height_ratio = height_left - height_right;
	full = get_full(tree);

	/** meaning tree is perfect **/
	if (height_ratio == 0 && full == 1)
		return (1);
	return (0);
}
