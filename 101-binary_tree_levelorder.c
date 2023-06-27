#include "binary_trees.h"

#define MAX_SIZE 100

/**
 * create_queue - creates a queue of data of type binary_tree_t
 * and size MAX_SIZE
 * @start: starting index;
 * @end: ending index;
 * Return: returns a pointer to the allocated binary_tree_t pointers.
 */
binary_tree_t **create_queue(int *start, int *end)
{
	binary_tree_t **queue;

	queue = (binary_tree_t **) malloc(sizeof(binary_tree_t) * MAX_SIZE);
	if (!queue)
		return (NULL);

	*start = *end = 0;
	return (queue);
}

/**
 * enque - adds new binary_tree_t node at the end of the stack of nodes;
 * @stack: pointer to the queue of binary tree nodes
 * @end: ending index that dynamically increments whenever a new node is added
 * at the end of the queue
 * @node: node to be enqued
 */
void enque(binary_tree_t **stack, int *end, binary_tree_t *node)
{
	stack[*end] = node;
	(*end)++;
}

/**
 * deque - removes the binary_tree_t node at the beginning of the queue
 * @stack: pointer to the queue of binary tree nodes
 * @begin: beginning index that dynamically increments whenever the last node
 * is dequed to point to the new beginning node.
 * Return: returns pointer to the dequed node.
 */
binary_tree_t *deque(binary_tree_t **stack, int *begin)
{
	(*begin)++;
	return (stack[*begin - 1]);
}

/**
 * binary_tree_levelorder - simple algorithm that traverses nodes of a binary
 * tree in a level order format.
 * @tree: pointer to root node of the binary tree
 * @func: function to be apllied with every traverse
 *
 * Description:
 * LOOP WHILE (node exist)
 *	1) visits node, queue, at the beginning of queue, its children.
 *	   (order: left -> right)
 *	2) deques the first element in the queue and set it as node.
 * ENDLOOP
 *
 * That way all nodes in BT will be visited in a level-order fashion.
 */
void binary_tree_levelorder(const binary_tree_t *tree, void (*func)(int))
{
	int begin, end;
	binary_tree_t **queue;
	binary_tree_t *node;

	if (!tree || !func)
		return;

	node = (binary_tree_t *) tree;
	queue = create_queue(&begin, &end);

	if (!queue)
		return;

	while (node)
	{
		func(node->n);

		if (node->left)
			enque(queue, &end, node->left);
		if (node->right)
			enque(queue, &end, node->right);

		node = deque(queue, &begin);
	}
	free(queue);
}
