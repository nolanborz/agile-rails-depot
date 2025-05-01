require "test_helper"

class CartTest < ActiveSupport::TestCase
  setup do
    @cart = Cart.create
    @product1 = products(:one)
    @product2 = products(:two)
  end
  test "add two different products to a cart" do
    @cart.add_product(@product1).save!
    @cart.add_product(@product2).save!

    assert_equal 2, @cart.line_items.size

    assert_equal @product1.price, @cart.line_items[0].price
    assert_equal @product2.price, @cart.line_items[1].price

    assert_equal 1, @cart.line_items[0].quantity
    assert_equal 1, @cart.line_items[1].quantity
  end

  test "adding same product twice increases quantity but not line items count" do
    @cart.add_product(@product1).save!
    @cart.add_product(@product1).save!

    assert_equal 1, @cart.line_items.size

    assert_equal 2, @cart.line_items[0].quantity

    assert_equal @product1.price, @cart.line_items[0].price

    assert_equal @product1.price * 2, @cart.line_items[0].total_price
  end

  test "price total of cart is sum of product's prices" do
    @cart.add_product(@product1).save!
    @cart.add_product(@product2).save!
    @cart.add_product(@product1).save!

    expected_total = (@product1.price * 2) + @product2.price

    assert_equal expected_total, @cart.total_price
  end
end
