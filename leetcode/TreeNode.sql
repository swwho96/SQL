'''
Each node in the tree can be one of three types:

"Leaf": if the node is a leaf node.
"Root": if the node is the root of the tree.
"Inner": If the node is neither a leaf node nor a root node.
Write an SQL query to report the type of each node in the tree.

Return the result table ordered by id in ascending order.

The query result format is in the following example.
'''

SELECT id,
CASE WHEN p_id IS NULL THEN 'Root'
WHEN p_id IN (SELECT id FROM Tree) AND id in (SELECT p_id FROM Tree WHERE p_id IS NOT NULL) THEN 'Inner'
WHEN p_id IN (SELECT id FROM Tree) AND id NOT IN (SELECT p_id FROM Tree WHERE p_id IS NOT NULL) THEN 'Leaf'
END AS type
FROM Tree
ORDER BY id ASC