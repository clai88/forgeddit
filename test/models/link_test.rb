require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "link_exists" do
    assert Link
  end

  test "link persisted" do
    link = Link.create(title: "dog", url: "dog.com")
    assert link.persisted?
  end

  test "links have comments" do
    link = links(:code)
    ruby = comments(:ruby)

    assert_equal [ruby], link.comments
  end
end
