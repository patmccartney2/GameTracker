require 'rails_helper'

describe Game, type: :model do
  describe "validations" do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:genre)}
    it {should validate_presence_of(:release_date)}
    it {should validate_presence_of(:system)}
  end
end
