require './constants.rb'
require './heap.rb'

# Binary Tree Representation of input array
#                  5
#                /    \
#              3        1
#            /  \     /  \
#          4     15  13  10
#         / \    / \
#        9   8  6  17
while true
  arr = [5, 3, 1, 4, 15, 13, 10, 9, 8, 6, 17]
  puts "Here is the original array: #{arr.inspect}"
  puts "Do you want to create a min or max heap?"

  heap_type = gets.chomp
  unless HEAP_TYPES.include? heap_type
    puts "Please input either '#{MIN}' or '#{MAX}'"
    puts
    next
  end

  Heap.new(arr, heap_type == MAX).create_heap
  puts "The #{heap_type.downcase == MAX ? MAX : MIN} heap: #{arr.inspect}"

  puts "Would you like to try another input? y / n"
  try_again = gets.chomp.downcase
  puts

  next if try_again == "y"
  break
end
