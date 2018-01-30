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
            family_introduction = "The #{@head.surname} family"
            @families[1..-1].each do |family|
                appended_introduction= "followed by the #{family} family"
                family_introduction = family_introduction + ", " + appended_introduction
            end 
            family_introduction
        end 
    end

    def prepend
        current_node = @head
    end
end