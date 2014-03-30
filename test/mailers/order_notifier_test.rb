require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Teng's Store Order Confirmation", mail.subject
    assert_equal ["526864480@qq.com"], mail.to
    assert_equal ["tenglichina@gmail.com"], mail.from
    assert_match "1 x Breed Love Guitar", mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "Teng's Store Order Shipped", mail.subject
    assert_equal ["526864480@qq.com"], mail.to
    assert_equal ["tenglichina@gmail.com"], mail.from
    assert_match /<td>1&times;<\/td>\s*<td>Breed Love Guitar<\/td>/, mail.body.encoded
  end

end
