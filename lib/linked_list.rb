require './lib/node'

class LinkedList
    
    attr_reader :head

    def initialize(head = nil)
        @head = head
        @counter = 0
        @families = []
    end

    def append(name)
        @counter += 1
        @families << name
        if @head == nil
            @head = Node.new(name)
        else 
            @head.next_node = Node.new(name)
        end 
    end

    def count
        @counter
    end

    def to_string
        if @families.count == 1
            "The #{@head.surname} family."
        else 
            @families[1..-1].each do |family|
                family_introduction = "followed by the #{family} family"
                "The #{@head.surname} family," + family_introduction
            end 

        end 
    end

    # def 
end