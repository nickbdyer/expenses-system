class AddExpenseIdToProject < ActiveRecord::Migration
  def change
    add_reference :projects, :expense, index: true
  end
end
