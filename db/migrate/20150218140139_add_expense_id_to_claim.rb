class AddExpenseIdToClaim < ActiveRecord::Migration
  def change
    add_reference :claims, :expense, index: true
  end
end
