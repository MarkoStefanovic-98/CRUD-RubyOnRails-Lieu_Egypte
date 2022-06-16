class CreateLieus < ActiveRecord::Migration[7.0]
  def change
    create_table :lieus do |t|
      t.string :NomLieu
      t.text :description
      t.text :situation

      t.timestamps
    end
  end
end
