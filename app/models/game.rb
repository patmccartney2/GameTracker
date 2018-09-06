class Game < ApplicationRecord
  validates_presence_of :title, :genre, :release_year, :system
end
