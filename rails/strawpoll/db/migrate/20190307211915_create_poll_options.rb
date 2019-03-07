class CreatePollOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :poll_options do |t|
      t.string :option, limit: 80, null: false
      t.integer :votes, default: 0, null: false
      t.references :poll, foreign_key: true

      t.timestamps
    end
  end
end
