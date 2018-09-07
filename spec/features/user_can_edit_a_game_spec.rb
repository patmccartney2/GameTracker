require 'rails_helper'

describe 'user can edit a game' do
  describe 'user can edit from show page' do
    it 'edits a game' do
      game_1 = Game.create!(title: "Spelunky", genre: "Platformer", release_year: 2008, system: "Xbox360")
      game_2 = Game.create!(title: "Splosion Man", genre: "Platformer", release_year: 2009, system: "Xbox360")

      visit game_path(game_1)

      click_link("Edit")

      expect(current_path).to eq(edit_game_path(game_1))
      fill_in "game[title]", with: "Halo"
      fill_in "game[genre]",  with: "FPS"
      fill_in "game[release_year]",  with: 2001
      fill_in "game[system]",  with: "Xbox"
      click_on "Submit"
    end
  end
end
