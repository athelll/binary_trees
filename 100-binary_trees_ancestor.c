#include "binary_trees.h"

/**
 * get_depth - gets the depth of node
 * @node: pointer to node to et depth
 * Return: return the depth of the node
 */
int get_depth(const binary_tree_t *node)
{
	if (!node)
		return (-1);
	return (1 + get_depth(node->parent));
}

/**
 * binary_trees_ancestor - finds the ancestor of two nodes in a binary tree
 * @first: first node
 * @second: second node
 * Return: returns pointer to ancestor
 *
 * Description:
 * This algorithm devised by yours truly felix UwU, works by:
 * 1) checks if the two nodes have the same parent if yes returns the parent
 * 2) finds the depth of both nodes and then applys a simple algorithm to
 *    enable the deeper one catch up to the other node closer to the root.
 * 3) checks if both nodes are the same if yes returns the node as the ancestor
 * 4) if not but share the same parents meaning they're siblings returns the
 *    parent as the ancestor.
 * 5) but if nethier is the case: given both nodes posses the same depth now,
 *    both nodes backtracks to their parents until they find a parent they both
 *    share and returns said parent. if not returns NULL.
 */
binary_tree_t *binary_trees_ancestor(const binary_tree_t *first, const binary_tree_t *second)
{
	int first_depth;
	int second_depth;

	if (!first || !second)
		return (NULL);

	if (first->parent == second->parent)
		return (first->parent);

	first_depth = get_depth(first);
	second_depth = get_depth(second);

	if (first_depth < second_depth)
		for (; second_depth != first_depth; second_depth--)
			second = second->parent;

	if (second_depth < first_depth)
		for (; first_depth != second_depth; first_depth--)
			first = first->parent;

	if (first == second)
		return ((binary_tree_t *) first);

	if (first->parent == second->parent)
		return (first->parent);

	while (first->parent != second->parent)
	{
		first = first->parent;
		second = second->parent;
	}
	return (first->parent);
}
