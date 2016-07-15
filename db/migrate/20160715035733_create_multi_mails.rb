class CreateMultiMails < ActiveRecord::Migration
  def change
    create_table :multi_mails do |t|
      t.string :to
      t.string :from
      t.string :subject
      t.text :body

      t.timestamps null: false
    end
  end
end
