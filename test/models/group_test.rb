require 'test_helper'

class GroupTest < ActiveSupport::TestCase

    def setup
        @group= Group.create(ime_grupa: "grupa")
    end
    
    test "Групата мора да биде валидна" do
        assert @group.valid?
    end
    
    test "Мора да напишете име нa групата" do
        @group.ime_podgrupa = ""
        assert_not @group.valid?
    end
    
end