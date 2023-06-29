#include "binary_trees.h"

/**
 * create_new_bst - creates a new BST node
 * @value: value of BST node
 * Return: returns new node or NULL on failure
 */
bst_t *create_new_bst(int value)
{
	bst_t *new = malloc(sizeof(bst_t));

	if (!new)
		return (NULL);

	new->n = value;
	new->parent = NULL;
	new->left = NULL;
	new->right = NULL;
	return (new);
}

/**
 * bst_insert - simple algorithm that inserts nodes to into a BST
 * @tree: double pointer that holds the address of the pointer that
 * points to the root node. Dereferencing this can change what the root
 * node points to.
 * @value: value of BST node to be inserted
 * Return: returns the newly created node.
 */
bst_t *bst_insert(bst_t **tree, int value)
{
	bst_t *new, *node;

	if (!tree || !value)
		return (NULL);
	if (*tree && value == (*tree)->n)
		return (NULL);
	node = *tree;
	new = create_new_bst(value);
	if (!new)
		return (NULL);
	if (!(*tree))
	{
		*tree = new;
		return (new);
	}

	while (node)
	{
		if (node->n == value)
			return (NULL);
		if (!(node->right) && value > node->n)
		{
			node->right = new;
			new->parent = node;
			break;
		}
		if (!(node->left) && value < node->n)
		{
			node->left = new;
			new->parent = node;
			break;
		}
		if (value > node->n)
			node = node->right;
		else if (value < node->n)
			node = node->left;
		else
			break;
	}
	return (new);
}
