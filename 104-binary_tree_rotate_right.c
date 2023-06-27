#include "binary_trees.h"

binary_tree_t *binary_tree_rotate_right(binary_tree_t *tree)
{
	binary_tree_t *new_root;

	if (!tree)
		return (NULL);

	new_root = tree->left;

	tree->left = new_root->right;
	tree->parent = new_root;
	new_root->parent = NULL;
	new_root->right = tree;

	return (new_root);
}
