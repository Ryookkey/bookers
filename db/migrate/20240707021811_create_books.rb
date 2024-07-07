class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      # テーブル内容の記載
      # 本のタイトル
      t.string :title
      # 本の感想
      t.string :body
      
      t.timestamps
    end
  end
end
