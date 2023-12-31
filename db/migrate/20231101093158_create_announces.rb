class CreateAnnounces < ActiveRecord::Migration[6.1]
  def change
    create_table :announces do |t|
      
      t.string :user_name
      t.string :time #開催日時
      t.text :explanation
      t.string :title
      t.string :img #画像や動画を挿しこめる
      t.bigint :user_id
      
      t.timestamps
    end
  end
end
