class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :response
      t.references :question, :user
      t.timestamps
    end
  end
end
