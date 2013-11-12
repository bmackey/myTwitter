class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :Title
      t.string :Genre
      t.string :Director
      t.integer :Duration

      t.timestamps
    end
  end
end
