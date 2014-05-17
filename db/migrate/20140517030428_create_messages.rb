class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
        t.integer :user_id
        t.integer :destination_id
        t.integer :parent_id
        t.text :content
        t.timestamps
    end
  end
end
