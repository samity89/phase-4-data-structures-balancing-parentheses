require_relative './stack'

def balancing_parentheses(string)
    @stack = Stack.new
    string.chars.each do |char|
        if @stack.size == 0
            @stack.push(char)
        else
            if @stack.peek == ")" || char == "("
                @stack.push(char)
            else
                @stack.pop
            end 
        end
    end

    @stack.size
end
