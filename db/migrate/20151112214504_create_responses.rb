class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :text
      t.integer :question_id
      t.integer :answer_choice_id
      t.integer :user_id
    end
  end
end
