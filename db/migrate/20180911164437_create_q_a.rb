class CreateQA < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.column :title, :string
      t.column :body, :string
      t.column :user_id, :integer
      t.column :score, :integer
    end
    create_table :answers do |t|
      t.column :response, :string
      t.column :user_id, :integer
      t.column :vote, :integer
    end
    create_join_table :questions, :answers
    end
end
