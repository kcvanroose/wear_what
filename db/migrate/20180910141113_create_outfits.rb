class CreateOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :outfits do |t|
      t.string :occasion

      t.timestamps
    end
  end
end
