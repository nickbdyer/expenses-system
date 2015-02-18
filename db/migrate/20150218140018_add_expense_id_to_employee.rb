class AddExpenseIdToEmployee < ActiveRecord::Migration
  def change
    add_reference :employees, :expense, index: true
  end
end
