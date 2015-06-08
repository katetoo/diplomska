class CreateReviewmeds < ActiveRecord::Migration
  def change
    create_table :reviewmeds do |t|
      t.string :komentar_na_lek
      t.integer :user_id
      t.integer :medicament_id
    end
  end
end
