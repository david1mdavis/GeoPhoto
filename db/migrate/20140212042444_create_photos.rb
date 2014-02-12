class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end
