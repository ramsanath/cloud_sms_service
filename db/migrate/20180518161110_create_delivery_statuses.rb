class CreateDeliveryStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_statuses do |t|
      t.integer :android_code
      t.string :status

      t.timestamps
    end
  end
end
