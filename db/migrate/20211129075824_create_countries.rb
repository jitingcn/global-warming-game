class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :description
      t.string :category
      t.jsonb :properties, default: {}

      t.timestamps
    end
  end
end
