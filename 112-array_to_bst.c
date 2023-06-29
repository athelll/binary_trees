#include "binary_trees.h"

/**
 * array_to_bst - converts an array to a Binary Search Tree
 * @array: pointer to first element of array.
 * @size: size of array
 * Dependency: bst_insert(bst_t **root, int value);
 * Return: returns the root node of the new Binary Search Tree.
 */
bst_t *array_to_bst(int *array, size_t size)
{
	size_t index = 0;
	bst_t *root = NULL;

	if (!array)
		return (NULL);

	while (index < size)
		bst_insert(&root, array[index++]);

	return (root);
}
