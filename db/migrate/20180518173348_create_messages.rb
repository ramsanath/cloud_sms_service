class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :sender_address
      t.text :body
      t.string :subject
      t.date :received_at
      t.string :message_type
      t.integer :thread
      t.boolean :is_read
      t.integer :person
      t.date :sent_at
      t.string :status

      t.timestamps
    end
  end
end
