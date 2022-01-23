require "test_helper"

class ListCategoriesTest < ActionDispatch::IntegrationTest
  test "should show categories listing" do
    @category = Category.create(name: "Sports")
    @category2 = Category.create(name: "Travel")

    get categories_path

    assert_select "a[href=?]", category_path(@category), text: @category.name
    assert_select "a[href=?]", category_path(@category2), text: @category2.name
  end
end
