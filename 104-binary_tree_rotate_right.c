#include "binary_trees.h"

/**
 * binary_tree_rotate_right - rotates a binary tree right
 * @tree: tree to rotate
 * Return: returns new root
 */
binary_tree_t *binary_tree_rotate_right(binary_tree_t *tree)
{
	binary_tree_t *new_root;

	if (!tree)
		return (NULL);

	new_root = tree->left;

	tree->left = new_root->right;
	if (new_root->right != NULL)
		new_root->right->parent = tree;

	new_root->right = tree;
	new_root->parent = NULL;
	tree->parent = new_root;

	return (new_root);
}
