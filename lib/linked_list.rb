require './lib/node'

class LinkedList
    
    attr_reader :head
    def initialize
        @head = head
    end

    def append(name, supplies)
        current_node = @head
        if @head.nil?
            @head = Node.new(name, supplies)
        else 
            until current_node.next_node.nil?
                current_node = current_node.next_node
            end
        current_node.next_node = Node.new(name, supplies)
        end 
    end

    def count
        current_node = @head
        if current_node.nil?
            counter = 0
        else 
            counter = 1
            until current_node.next_node.nil?
                current_node = current_node.next_node
                counter += 1
            end 
        end 
        counter
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

    def prepend(name, supplies)
        if @head.nil? 
            @head = Node.new(name, supplies)
        else 
            current_head = @head
            @head = Node.new(name, supplies)
            @head.next_node = current_head 
        end 
    end

    def insert(index, name, supplies)
        current_node = @head
        (index - 1).times { current_node = current_node.next_node }
        new_node = Node.new(name, supplies)
        new_node.next_node = current_node.next_node
        current_node.next_node = new_node
    end

    def find(index, elements)
        new_family_list = LinkedList.new
        current_node = @head 
        index.times { current_node = current_node.next_node}
        new_head = current_node
        new_family_list.append(new_head.surname, new_head.supplies)
        (elements - 1).times do
            current_node = current_node.next_node
            new_family_list.append(current_node.surname, current_node.supplies)
        end
        new_family_list.to_string
    end

    def includes?(name)
        to_string.include?(name)
    end

    def pop
        current_node = @head
        until current_node.next_node.next_node.nil?
            current_node = current_node.next_node
        end
        final_family_name = current_node.next_node.surname
        current_node.next_node = nil
        "The #{final_family_name} family has died of dysentery"
    end

end