require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create order" do
    visit orders_url
    click_on "New order"

    fill_in "Budget", with: @order.budget
    fill_in "City", with: @order.city
    fill_in "Contact person", with: @order.contact_person_id
    fill_in "Cup", with: @order.cup
    fill_in "Diem", with: @order.diem
    fill_in "End date", with: @order.end_date
    fill_in "Executor", with: @order.executor_id
    fill_in "Housing", with: @order.housing
    fill_in "Locomotive", with: @order.locomotive_id
    fill_in "Rental housing", with: @order.rental_housing
    fill_in "Start date", with: @order.start_date
    fill_in "Status", with: @order.status
    fill_in "Tangen", with: @order.tangen
    fill_in "Wheel pairs", with: @order.wheel_pairs
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Budget", with: @order.budget
    fill_in "City", with: @order.city
    fill_in "Contact person", with: @order.contact_person_id
    fill_in "Cup", with: @order.cup
    fill_in "Diem", with: @order.diem
    fill_in "End date", with: @order.end_date
    fill_in "Executor", with: @order.executor_id
    fill_in "Housing", with: @order.housing
    fill_in "Locomotive", with: @order.locomotive_id
    fill_in "Rental housing", with: @order.rental_housing
    fill_in "Start date", with: @order.start_date
    fill_in "Status", with: @order.status
    fill_in "Tangen", with: @order.tangen
    fill_in "Wheel pairs", with: @order.wheel_pairs
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end
