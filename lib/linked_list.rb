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
            require 'pry'; binding.pry
        end 
    end

    def count
        @counter
    end

    def to_string
        if @counter == 1
            "The #{@head.surname} family."
        else @counter == 2
            "The #{@head.surname}, followed by the #{@head.next_node.surname} family."
        end 
    end
end