class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :discord_id, :limit => 8, index: { unique: true }
      t.integer :level, default: 0

      t.timestamps null: false
    end
  end
end
