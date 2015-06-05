require 'test_helper'

class SubgroupTest < ActiveSupport::TestCase

    def setup
        @group= Group.create(ime_grupa: "grupa")
        @subgroup = @group.subgroups.build(ime_podgrupa: "podgrupa")
    end
    
    test "Подгрупата мора да биде валидна" do
        assert @subgroup.valid?
    end
    
    test "Мора да напишете име нa подгрупата" do
        @subgroup.ime_podgrupa = ""
        assert_not @subgroup.valid?
    end
    
end