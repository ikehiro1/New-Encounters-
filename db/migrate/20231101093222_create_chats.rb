class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      
      #コミュニティ名（舞台、声優、映像、バンド、歌手、アイドル、タレント、芸人）
      t.string :community_name
      t.string :chat_summray #投稿内容
      
      t.timestamps
    end
  end
end
