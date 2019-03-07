class CreatePolls < ActiveRecord::Migration[6.0]
  def change
    create_table :polls do |t|
      t.timestamp :opens_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.timestamp :closes_at, null: false, default: -> { "(datetime('now', '+1 day'))" }
      t.text :author_email, null: false

      t.timestamps
    end
  end
end
