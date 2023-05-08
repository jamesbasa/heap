require './heap.rb'

# Binary Tree Representation of input array
#                  5
#                /    \
#              3        1
#            /  \     /  \
#          4     15  13  10
#         / \    / \
#        9   8  6  17
arr = [5, 3, 1, 4, 15, 13, 10, 9, 8, 6, 17]
puts "Original: #{arr.inspect}"

Heap.new(arr).create_heap(true)
puts "Max Heap: #{arr.inspect}"

arr = [5, 3, 1, 4, 15, 13, 10, 9, 8, 6, 17]
Heap.new(arr).create_heap(false)
puts "Min Heap: #{arr.inspect}"
