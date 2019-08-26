class CreateMessageGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :message_groups do |t|
      t.string :name

      t.timestamps
    end
    add_index :message_groups, :name, unique: true
  end
end
