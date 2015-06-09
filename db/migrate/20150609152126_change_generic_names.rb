class ChangeGenericNames < ActiveRecord::Migration
  def change
    change_column :generic_names, :sostav, :text
    change_column :generic_names, :indikacii, :text
    change_column :generic_names, :interakcii, :text
    change_column :generic_names, :dejstvo, :text
    change_column :generic_names, :merki_na_pretpazlivost, :text
    change_column :generic_names, :doziranje, :text
    change_column :generic_names, :nesakani_dejstva, :text
    change_column :generic_names, :kontraindikacii, :text
  end
end
