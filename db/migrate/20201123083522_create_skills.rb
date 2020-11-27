class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.string :skill_location
      t.boolean :remote
      t.string :tag
      t.decimal :price

      t.timestamps
    end
  end
end
