require './lib/node'

class LinkedList
    
    attr_reader :head

    def initialize(head = nil)
        @head = head
        @counter = 0
    end

    def append(name)
        @counter += 1
        if @head == nil
            @head = Node.new(name)
        else 
            @head.next_node == Node.new(name)
        end 
    end

    def count
        @counter
    end

    def to_string
    #     if @counter == 1
            "The #{@surname} family."
    #     else @counter >= 2
    #         "The #{append(name)}, followed by the #{next_node} family."
    #     end 
    end
end