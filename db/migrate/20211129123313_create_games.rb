class CreateGames < ActiveRecord::Migration[6.1]
  def change
    enable_extension "pgcrypto"

    create_table :games do |t|
      t.jsonb :payload, null: false, default: {}

      t.uuid :link, default: "gen_random_uuid()", null: false
      t.timestamps
    end
    add_index :games, :link, unique: true
  end
end
