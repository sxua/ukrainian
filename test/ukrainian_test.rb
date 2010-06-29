require 'test_helper'

class UkrainianTest < Test::Unit::TestCase
  should "have pluralize method" do
    assert Ukrainian.respond_to?(:pluralize)
  end

  should "pluralize correctrly" do
    variants = %w(озеро озера озер)
    [['озеро', 1], ['озера', 2], ['озер', 5], ['озеро', 631]].each do |w, n|
      assert_equal Ukrainian.pluralize(n, *variants), w
    end
  end
end
