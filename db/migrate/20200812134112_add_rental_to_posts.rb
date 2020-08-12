class AddRentalToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :rental, :boolean, default: false
  end
end
