class CreateDirectMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :direct_messages do |t|
      t.belongs_to :sender
      t.belongs_to :recipient
      t.text :message

      t.timestamps
    end

    add_foreign_key :direct_messages, :users, column: :sender_id, primary_key: :id
    add_foreign_key :direct_messages, :users, column: :recipient_id, primary_key: :id
  end
end
