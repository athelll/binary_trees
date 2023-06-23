#include "binary_trees.h"

/**
 * binary_tree_depth_getter - gets the depth of a binary tree
 * @tree: pointer to tree node
 * Return: returns depth or -1 if pointer to tree is NULL
 */
size_t binary_tree_depth_getter(const binary_tree_t *tree)
{
	if (!tree)
		return (-1);
	return (1 + binary_tree_depth_getter(tree->parent));
}

/**
 * binary_tree_depth - measures depth of binary tree
 * @tree: pointer to tree node
 * Return: returns depth of node or 0 if NULL
 * Description:
 * Guards binary_tree_depth_getter() from taking NULL pointer
 * to binary_tree_t as arg. and misbehaving.
 */
size_t binary_tree_depth(const binary_tree_t *tree)
{
	if (!tree)
		return (0);
	return (binary_tree_depth_getter(tree));
}
