class CreateFaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :area
      t.string :image_path
      t.text :bio

      t.timestamps
    end
  end
end
