require "application_system_test_case"

class microTwitterTest < ApplicationSystemTestCase
  test "login success" do
    visit "/main"
    fill_in "Email", with: "a"
    fill_in "Password", with: "a"
    click_on "Login"
    assert_selector "p", text: "Login successfully."
  end
  test "login wrong email" do
    visit "/main"
    fill_in "Email", with: "a"
    fill_in "Password", with: "XXX"
    click_on "Login"
    assert_selector "p", text: "Email/Password incorrect."
  end
  test "login wrong password" do
    visit "/main"
    fill_in "Email", with: "XXX"
    fill_in "Password", with: "a"
    click_on "Login"
    assert_selector "p", text: "Email/Password incorrect."
  end
end