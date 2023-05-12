require './constants.rb'
require './lib/heap.rb'

def main
	while true
		arr = []
		puts "Do you want to create a min or max heap?"

		heap_type = gets.chomp.downcase
		unless HEAP_TYPES.include? heap_type
			puts "Please input either '#{MIN}' or '#{MAX}'"
			puts
			next
		end

		heap = Heap.new(arr, heap_type == MAX)

		while true
			puts "Input an integer to insert into the heap. Or input a non-integer to exit."

			response = gets.chomp

			begin
				value = Integer(response)
			rescue ArgumentError
				puts "No integer detected. Exiting..."
				break
			end

			unless value.is_a? Integer
				puts "Please input a valid integer"
				puts
				next
			end

			heap.insert(value)
			puts "The #{heap_type} heap: #{arr.inspect}"
		end

		break
	end
end


main()
