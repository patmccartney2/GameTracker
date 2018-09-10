class AddPaperclipFieldsToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :image_file_name,    :string
    add_column :games, :image_content_type, :string
    add_column :games, :image_file_size,    :integer
    add_column :games, :image_updated_at,   :datetime
  end
end
