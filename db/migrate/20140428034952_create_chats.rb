class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :sessionId
      t.integer :user_id

      t.timestamps
    end
  end
end
