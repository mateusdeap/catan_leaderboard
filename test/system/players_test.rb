require "application_system_test_case"

class PlayersTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit players_url

    player_one = players(:one)
    player_two = players(:two)

    assert_selector "h1", text: "Leaderboard"
    assert_selector "td", text: player_one.name 
    assert_selector "td", text: player_one.score 
    assert_selector "td", text: player_two.name 
    assert_selector "td", text: player_two.score 
  end
end
