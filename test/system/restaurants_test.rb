require "application_system_test_case"

class RestaurantsTest < ApplicationSystemTestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "visiting the index" do
    visit restaurants_url
    assert_selector "h1", text: "Restaurants"
  end

  test "should create restaurant" do
    visit restaurants_url
    click_on "New restaurant"

    check "Active" if @restaurant.active
    fill_in "Email", with: @restaurant.email
    fill_in "Name", with: @restaurant.name
    fill_in "Phone number", with: @restaurant.phone_number
    fill_in "Web site", with: @restaurant.web_site
    click_on "Create Restaurant"

    assert_text "Restaurant was successfully created"
    click_on "Back"
  end

  test "should update Restaurant" do
    visit restaurant_url(@restaurant)
    click_on "Edit this restaurant", match: :first

    check "Active" if @restaurant.active
    fill_in "Email", with: @restaurant.email
    fill_in "Name", with: @restaurant.name
    fill_in "Phone number", with: @restaurant.phone_number
    fill_in "Web site", with: @restaurant.web_site
    click_on "Update Restaurant"

    assert_text "Restaurant was successfully updated"
    click_on "Back"
  end

  test "should destroy Restaurant" do
    visit restaurant_url(@restaurant)
    click_on "Destroy this restaurant", match: :first

    assert_text "Restaurant was successfully destroyed"
  end
end
