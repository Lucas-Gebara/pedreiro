class AddPhotoToPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :photo, :string
  end
end
