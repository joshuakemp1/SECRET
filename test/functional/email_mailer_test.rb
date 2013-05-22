require 'test_helper'

class EmailMailerTest < ActionMailer::TestCase
  test "lets_talk" do
    mail = EmailMailer.lets_talk
    assert_equal "Lets talk", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
