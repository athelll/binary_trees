#include "binary_trees.h"

int get_height(const binary_tree_t *tree);
void traverse_by_depth(int depth, binary_tree_t *root, void (*func)(int));
void levelorder_traversal_by_depth(binary_tree_t *root, int depth, void (*func)(int));

int get_height(const binary_tree_t *tree)
{
	int left, right;

	if (!tree)
		return (0);

	left = 1 + get_height(tree->left);
	right = 1 + get_height(tree->right);

	return (left >= right ? left : right);
}

void levelorder_traversal_at_depth(binary_tree_t *root, int depth, void (*func)(int))
{
	if (!root)
		return;

	if (depth == 1)
		func(root->n);

	if (depth > 1)
	{
		levelorder_traversal_at_depth(root->left, depth - 1, func);
		levelorder_traversal_at_depth(root->right, depth - 1, func);
	}
}

void traverse_by_depth(int depth, binary_tree_t *root, void (*func)(int))
{
	int a;

	for (a = 1; a <= depth; a++)
		levelorder_traversal_at_depth(root, a, func);
}

void binary_tree_levelorder(const binary_tree_t *tree, void (*func)(int))
{
	int height;

	if (!tree || !func)
		return;
	height = get_height(tree);
	traverse_by_depth(height, (binary_tree_t *) tree, func);
}
