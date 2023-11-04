class CreateMyPrs < ActiveRecord::Migration[6.1]
  def change
    create_table :my_prs do |t|
      
      t.string :pr_title
      t.text :pr_explanation
      t.string :pr_movie #gem 'carrierwave'で動画投稿も可
      t.bigint :user_id

      t.timestamps
    end
  end
end
