class AddMainActorToFilms < ActiveRecord::Migration
  def change
    add_column :films, :Actor, :string
  end
end
