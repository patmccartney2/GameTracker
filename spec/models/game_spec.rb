require 'rails_helper'

describe Game, type: :model do
  describe "validations" do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:genre)}
    it {should validate_presence_of(:release_year)}
    it {should validate_presence_of(:system)}
    it {should have_many(:comments)}
    it {should have_many(:taggings)}
  end
  describe "instance methods" do
    describe "#tag_list" do
      it "turns associated tags into a string" do
        game = Game.create(title: "Spelunky", genre: "platformer", release_year: 2008, system: "Xbox360")
        game.tags.create(name: "Platformer")
        game.tags.create(name: "Multiplayer")

        expect(game.tag_list).to eq("Platformer, Multiplayer")
      end
    end
  end
end
