class ExpensesController < ApplicationController

  def index
    @expenses = Expense.all
    @expense = Expense.new
  end


end
