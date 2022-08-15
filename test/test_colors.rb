# frozen_string_literal: true

require "test_helper"

class TesColors < Minitest::Test
  def setup
    @merger = TailwindMerge::Merger.new
  end

  def test_handles_color_conflicts_properly
    assert_equal("bg-hotpink", @merger.merge("bg-grey-5 bg-hotpink"))
    assert_equal("hover:bg-hotpink", @merger.merge("hover:bg-grey-5 hover:bg-hotpink"))
  end
end
