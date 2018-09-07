require 'rails_helper'

describe 'user can add a game' do
  describe 'user can click on add a game from index' do
    describe 'user can fill out form to create a game' do
      it 'creates a new game' do

        visit games_path

        click_on("Add A Game")

        expect(current_path).to eq(new_game_path)
        fill_in "game[title]", with: "Spelunky"
        fill_in "game[genre]",  with: "Platformer"
        fill_in "game[release_year]",  with: 2008
        fill_in "game[system]",  with: "Xbox360"
        fill_in "game[tag_list]", with: "Platformer, Multiplayer"
        click_on "Submit"

        expect(page).to have_content("Spelunky")
        expect(page).to have_content("Platformer")
        expect(page).to have_content(2008)
        expect(page).to have_content("Xbox360")
        expect(page).to have_content("platformer")
        expect(page).to have_content("multiplayer")
        end
      end
    end
  end
