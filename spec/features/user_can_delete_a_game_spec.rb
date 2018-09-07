require 'rails_helper'

describe 'user can delete a game' do
  describe 'link from show page' do
    it 'displays index w/o deleted game' do
      game_1 = Game.create!(title: "Spelunky", genre: "Platformer", release_year: 2008, system: "Xbox360")
      game_2 = Game.create!(title: "Splosion Man", genre: "Platformer", release_year: 2009, system: "Xbox360")

      visit game_path(game_1)

      click_link("Delete")

      expect(current_path).to eq(games_path)
      expect(page).to_not have_content("#{game_1.title}")
    end
  end
end
