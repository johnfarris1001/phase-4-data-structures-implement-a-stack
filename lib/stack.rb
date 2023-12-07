# your code here
class Stack
    def initialize(limit = 1000)
        @stack = []
        @limit = limit
    end

    def push(value)
        if @stack.length < @limit 
            @stack << value
        else
            raise "Stack Overflow"
        end
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end

    def size
        @stack.length()
    end

    def empty?
        @stack.size == 0
    end

    def full?
        @stack.size == @limit
    end

    def search(value)
        i = @stack.size() - 1
        while i > -1
            if @stack[i] == value
                return @stack.size() - i - 1
            end
            i -= 1
        end
        -1
    end
end