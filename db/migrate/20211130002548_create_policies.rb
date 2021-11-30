class CreatePolicies < ActiveRecord::Migration[6.1]
  def change
    create_table :policies do |t|
      t.string :name
      t.string :description
      t.string :category
      t.jsonb :payload, default: {}, null: false

      t.timestamps
    end
    add_index :policies, :name, unique: true
  end
end
