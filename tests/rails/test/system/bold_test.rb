require "application_system_test_case"

class BoldTest < ApplicationSystemTestCase
  def setup
    page.goto(root_path)
    assert page.text_content("h2").include?("TipTap Editor")
  end

  def bold_button(str = "")
    page.locator("rhino-editor [part~='toolbar__button--bold']#{str}")
  end

  test "Should have aria-pressed when pressed" do
    bold_button.click
    locator = bold_button("[aria-pressed='true'][part~='toolbar__button--active']")
    # locator.wait_for

    assert locator.visible?
  end
end


