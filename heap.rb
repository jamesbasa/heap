class Heap
    attr_accessor :array, :heap_size, :is_max

    def initialize(arr, is_max = false)
        @array = arr
        @heap_size = arr.length
        @is_max = is_max
    end

    def insert(value)
        #  1. 
    end

    def create_heap
        # iterate over non-leaves descending
        for i in (@heap_size/2 - 1).downto(0)
            heapify(i)
        end
        
        return @array
    end

    def heapify(index)
        # 1. return if index is a leaf or heap is satisfied
        # 2. swap with the largest child if max heap, or smallest child if min heap
        # 3. call heapify on that child's index
        return if is_leaf?(index) || is_heap_satisfied?(index)

        child_index_to_swap =
            if @is_max
                left_child_value(index) > right_child_value(index) ? left_child_index(index) : right_child_index(index)
            else
                left_child_value(index) < right_child_value(index) ? left_child_index(index) : right_child_index(index)
            end
        @array[index], @array[child_index_to_swap] = @array[child_index_to_swap], @array[index]

        heapify(child_index_to_swap)
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

    def is_heap_satisfied?(index)
        if @is_max
            @array[index] > left_child_value(index) && @array[index] > right_child_value(index)
        else
            @array[index] < left_child_value(index) && @array[index] < right_child_value(index)
        end
    end
end
