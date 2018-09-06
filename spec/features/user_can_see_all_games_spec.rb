require "rails_helper"

describe "user sees all games" do
  describe "they visit /games" do
    it "displays all games" do
      game_1 = Game.create!(title: "Spelunky", genre: "Platformer", release_year: 2008, system: "Xbox360")
      game_2 = Game.create!(title: "Splosion Man", genre: "Platformer", release_year: 2009, system: "Xbox360")

      visit games_path

      expect(page).to have_link(game_1.title)
      expect(page).to have_link(game_2.title)
      expect(page).to have_link("Add A Game")
    end
  end
end
