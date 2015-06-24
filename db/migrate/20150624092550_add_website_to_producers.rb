class AddWebsiteToProducers < ActiveRecord::Migration
  def change
    add_column :producers, :website, :string
  end
end
