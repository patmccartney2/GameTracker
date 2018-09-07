require 'rails_helper'

describe 'user sees one game' do
  describe "they link from the games index" do
		it "displays information for one game" do
      game_1 = Game.create!(title: "Spelunky", genre: "Platformer", release_year: 2008, system: "Xbox360")
      game_2 = Game.create!(title: "Splosion Man", genre: "Platformer", release_year: 2009, system: "Xbox360")
      comment_1 = game_1.comments.create(author_name: "haxor", body: "brutal buy fun")
      comment_2 = game_1.comments.create(author_name: "leet", body: "Trying an Eggplant run")
      visit games_path

      click_on("#{game_1.title}")

      expect(current_path).to eq(game_path(game_1))
      expect(page).to have_content(comment_1.author_name)
      expect(page).to have_content(comment_1.body)
    end
  end
  describe 'user can fill in a comment' do
    it 'displays comment on show page' do
      game = Game.create(title: "Spelunky", release_year: 2008, genre: "platformer", system: "xbox360")

      visit game_path(game)

     fill_in "comment[author_name]", with: "ME!"
     fill_in "comment[body]", with: "This game is terrible"
     click_on "Submit"

     expect(current_path).to eq(game_path(game))
     expect(page).to have_content("Post a Comment")
     expect(page).to have_content("ME!")
     expect(page).to have_content("This game is terrible")


   end
 end
end
