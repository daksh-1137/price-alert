require "application_system_test_case"

class AlertsTest < ApplicationSystemTestCase
  setup do
    @alert = alerts(:one)
  end

  test "visiting the index" do
    visit alerts_url
    assert_selector "h1", text: "Alerts"
  end

  test "should create alert" do
    visit alerts_url
    click_on "New alert"

    fill_in "Cryptocurrency", with: @alert.cryptocurrency
    fill_in "Status", with: @alert.status
    fill_in "Target price", with: @alert.target_price
    fill_in "User", with: @alert.user_id
    click_on "Create Alert"

    assert_text "Alert was successfully created"
    click_on "Back"
  end

  test "should update Alert" do
    visit alert_url(@alert)
    click_on "Edit this alert", match: :first

    fill_in "Cryptocurrency", with: @alert.cryptocurrency
    fill_in "Status", with: @alert.status
    fill_in "Target price", with: @alert.target_price
    fill_in "User", with: @alert.user_id
    click_on "Update Alert"

    assert_text "Alert was successfully updated"
    click_on "Back"
  end

  test "should destroy Alert" do
    visit alert_url(@alert)
    click_on "Destroy this alert", match: :first

    assert_text "Alert was successfully destroyed"
  end
end
