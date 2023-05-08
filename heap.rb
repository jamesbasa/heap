class Heap
    attr_accessor :array, :heap_size

    def initialize(arr)
        @array = arr
        @heap_size = arr.length
    end

    def create_max_heap
        # iterate over non-leaves descending
        for i in (@heap_size/2 - 1).downto(0)
            max_heapify(i)
        end
    end

    def max_heapify(index)
        # 1. return if index is a leaf or heap is satisfied
        # 2. swap with the largest child
        # 3. call heapify on the largest child's index
        return if is_leaf?(index) || is_max_heap_satisfied?(index)

        largest_child_index = if left_child_value(index) > right_child_value(index)
                                  left_child_index(index)
                              else
                                  right_child_index(index)
                              end
        @array[index], @array[largest_child_index] = @array[largest_child_index], @array[index]

        max_heapify(largest_child_index)
    end

    def left_child_index(index)
        2*index + 1
    end

    def right_child_index(index)
        2*index + 2
    end

    def left_child_value(index)
        @array[left_child_index(index)]
    end

    def right_child_value(index)
        @array[right_child_index(index)]
    end

    def is_leaf?(index)
        index >= (@heap_size / 2)
    end

    def is_max_heap_satisfied?(index)
        @array[index] > left_child_value(index) && @array[index] > right_child_value(index)
    end
end
