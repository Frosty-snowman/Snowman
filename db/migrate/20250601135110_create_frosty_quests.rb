class CreateFrostyQuests < ActiveRecord::Migration[8.0]
  def change
    create_table :frosty_quests do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
