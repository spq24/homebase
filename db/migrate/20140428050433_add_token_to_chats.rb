class AddTokenToChats < ActiveRecord::Migration
  def change
    add_column :chats, :token, :string
  end
end
