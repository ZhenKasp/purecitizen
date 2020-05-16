class AddImageAndGpsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_attachment :posts, :image
    add_column :posts, :longitude, :float
    add_column :posts, :latitude, :float
  end
end
