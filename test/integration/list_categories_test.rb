require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest

  def setup
    @category1 = Category.create(nmae: "Sports")
    @category2 = Category.create(nmae: "Travel")
  end

  test "should show categories listing" do
    get "/categories"
    assert_select "a[href=?]" category_path(@category1), text: @category1.name
    assert_select "a[href=?]" category_path(@category2), text: @category2.name
  end
end
