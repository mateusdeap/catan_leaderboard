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

    table_data = page.all("tbody tr td")

    assert_match(player_one.name, table_data[0].text)
    assert_match(player_two.name, table_data[2].text)
  end
end
