class Node
    
    attr_reader :surname, 
                :supplies
    
    attr_accessor :next_node

    def initialize(surname, supplies)
        @surname = surname
        @next_node = next_node
        @supplies = supplies
    end

end