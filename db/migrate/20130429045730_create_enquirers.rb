class CreateEnquirers < ActiveRecord::Migration
  def change
    create_table :enquirers do |t|
      t.string :name
      t.string :email
      t.text :message
      t.string :phone
      t.string :message_type

      t.timestamps
    end
  end
end
