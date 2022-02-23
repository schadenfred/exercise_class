require "test_helper"

class CoreStrengthClassTest < ActiveSupport::TestCase

  describe 'CoreStrengthClass' do
    Given(:cs_class) { core_strength_classes(:one) }

    Then { assert_equal cs_class.name, 'blah' }
    # Then { assert_equal core_strength_classes(:two).name, 'blah'}


  end

end
