require 'test_helper'

class CommunityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'create community with valid name' do
    c = Community.new name: 'Good'
    assert c.valid? 'community should be okay'

    c = Community.new name: 'Something really long'
    assert c.valid?
  end

  test 'fail when community name is too small' do
    c = Community.new name: 'Bad'
    assert c.invalid?

    c = Community.new name: ''
    assert c.invalid?

    c = Community.new name: nil
    assert c.invalid?

    c = Community.new name: 1
    assert c.invalid?
  end
end
