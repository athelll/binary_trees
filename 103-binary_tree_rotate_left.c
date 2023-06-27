#include "binary_trees.h"

/**
 * binary_tree_rotate_left - rotates a binary left
 * @tree: tree to be rotated
 * Return: returns a pointer to the new root.
 */
binary_tree_t *binary_tree_rotate_left(binary_tree_t *tree)
{
	binary_tree_t *new_root;

	if (!tree)
		return;

	new_root = tree->right;

	tree->right = new_root->left;
	tree->parent = new_root;
	new_root->parent = NULL;
	new_root->left = tree;

	return (new_root);
}
