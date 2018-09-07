require 'rails_helper'

describe 'user sees one game' do
  describe "they link from the games index" do
		it "displays information for one game" do
      game_1 = Game.create!(title: "Spelunky", genre: "Platformer", release_year: 2008, system: "Xbox360")
      game_2 = Game.create!(title: "Splosion Man", genre: "Platformer", release_year: 2009, system: "Xbox360")

      visit games_path

      click_on("#{game_1.title}")

      expect(current_path).to eq(game_path(game_1))
    end
  end
end
