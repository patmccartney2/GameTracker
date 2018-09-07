require 'rails_helper'

describe Tag, type: :model do
  describe "relationships" do
    it {has_many(:taggings)}
  end
end
