require './lib/node'

class LinkedList
    
    attr_reader :head

    def initialize
        @head = head
        @counter = 0
        # @families = []
    end

    def append(name)
        @counter += 1
        current_node = @head
        if @head.nil?
            @head = Node.new(name)
        else 
            until current_node.next_node.nil?
                current_node = current_node.next_node
            end
        current_node.next_node = Node.new(name)
        end 
    end

    def count
        @counter
    end

    def to_string
        current_node = @head
        if current_node.nil?
            "No families on the trail!"
        else 
            family_roll_call = "The #{current_node.surname} family"
            until current_node.next_node.nil?
                current_node = current_node.next_node
                family_roll_call << ", followed by the #{current_node.surname} family"
            end 
        end 
        family_roll_call
    end


        # if @families.count == 1
        #     "The #{@head.surname} family."
        # else 
        #     family_introduction = "The #{@head.surname} family"
        #     @families[1..-1].each do |family|
        #         appended_introduction= "followed by the #{family} family"
        #         family_introduction = family_introduction + ", " + appended_introduction
        #     end 
        #     family_introduction
        # end 

    def prepend(name)
        current_node = Node.new(name)
        current_node.next_node = @head 
    end

    def insert(index, name)
        @counter += 1
        current_node = @head
        (index - 1).times { current_node = current_node.next_node }
        new_node = Node.new(name)
        new_node.next_node = current_node.next_node
        current_node.next_node = new_node
    end
end