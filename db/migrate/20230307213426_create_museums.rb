class CreateMuseums < ActiveRecord::Migration[7.0]
  def change
    create_table :museums do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :categories
      t.string :description

      t.timestamps
    end
  end
end
