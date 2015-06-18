class AddPictureToProducers < ActiveRecord::Migration
  def change
    add_column :producers, :picture, :string
  end
end
