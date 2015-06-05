class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.string :ime_proizvoditel
      t.string :poteklo
    end
  end
end
