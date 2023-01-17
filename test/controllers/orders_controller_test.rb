require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference("Order.count") do
      post orders_url, params: { order: { budget: @order.budget, city: @order.city, contact_person_id: @order.contact_person_id, cup: @order.cup, diem: @order.diem, end_date: @order.end_date, executor_id: @order.executor_id, housing: @order.housing, locomotive_id: @order.locomotive_id, rental_housing: @order.rental_housing, start_date: @order.start_date, status: @order.status, tangen: @order.tangen, wheel_pairs: @order.wheel_pairs } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { budget: @order.budget, city: @order.city, contact_person_id: @order.contact_person_id, cup: @order.cup, diem: @order.diem, end_date: @order.end_date, executor_id: @order.executor_id, housing: @order.housing, locomotive_id: @order.locomotive_id, rental_housing: @order.rental_housing, start_date: @order.start_date, status: @order.status, tangen: @order.tangen, wheel_pairs: @order.wheel_pairs } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference("Order.count", -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
