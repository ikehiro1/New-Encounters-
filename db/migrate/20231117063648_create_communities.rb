class CreateCommunities < ActiveRecord::Migration[6.1]
  def change
    create_table :communities do |t|
      t.string :content #投稿内容
      t.bigint :user_id
      
      t.timestamps
    end
  end
end
