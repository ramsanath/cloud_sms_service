class CreateMessageTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :message_types do |t|
      t.integer :android_code
      t.string :name
      t.string :android_column_name

      t.timestamps
    end
  end
end
