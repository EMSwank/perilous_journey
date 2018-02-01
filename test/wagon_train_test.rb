require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'
require './lib/wagon_train'

class WagonTrainTest < Minitest::Test
    def test_it_exists
        wt = WagonTrain.new

        assert_instance_of WagonTrain, wt
    end
    
    def test_it_returns_list_head_is_nil
        wt = WagonTrain.new
    
        assert_nil wt.head
    end

    def test_it_can_append
        wt = WagonTrain.new
        wt.append("Burke", {"pounds of food" => 200})
        assert_equal "Burke", wt.surname
    end

    def test_it_can_count_wagons
        wt = WagonTrain.new
        
        wt.append("Burke", {"pounds of food" => 200})
        wt.append("West", {"pounds of food" => 100})
        
        assert_equal 2, wt.count
    end
end