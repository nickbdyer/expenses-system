class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.datetime :date
      t.string :category
      t.string :participants

      t.timestamps
    end
  end
end
