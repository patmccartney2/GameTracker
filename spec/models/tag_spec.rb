require 'rails_helper'

describe Tag, type: :model do
  describe "relationships" do
    it {should belong_to(:game)}
  end
end
