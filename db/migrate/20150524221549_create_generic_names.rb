class CreateGenericNames < ActiveRecord::Migration
  def change
    create_table :generic_names do |t|
      t.string :genericko_ime
      t.string :detalna_podelba
      t.string :sostav
      t.string :indikacii
      t.string :interakcii
      t.string :dejstvo
      t.string :merki_na_pretpazlivost
      t.string :doziranje
      t.string :nesakani_dejstva
      t.string :kontraindikacii
      t.string :substitution_id
    end
  end
end
