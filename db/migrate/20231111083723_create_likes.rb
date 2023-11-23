class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :my_pr, null: false, foreign_key: true
      t.references :announce, null: false, foreign_key: true

      t.timestamps
    end
  end
end
