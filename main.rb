require './heap.rb'

# Binary Tree Representation of input array
#                  1
#                /    \
#              3        5
#            /  \     /  \
#          4      6  13  10
#         / \    / \
#        9   8  15 17
arr = [1, 3, 5, 4, 6, 13, 10, 9, 8, 15, 17]

puts "Before: #{arr.inspect}"
heap = Heap.new(arr)
heap.create_max_heap
puts "After: #{arr.inspect}"
