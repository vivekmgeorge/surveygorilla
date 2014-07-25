class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question, :choice1, :choice2, :choice3, :choice4
      t.references :survey
      t.timestamps
    end
  end
end
