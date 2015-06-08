class CreateReviewgenerics < ActiveRecord::Migration
  def change
    create_table :reviewgenerics do |t|
      t.string :komentar_na_generika
      t.integer :user_id
      t.integer :generic_name_id
    end
  end
end
