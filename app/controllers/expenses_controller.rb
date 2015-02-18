class ExpensesController < ApplicationController

  def index
     @expenses = Expense.all
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.create(post_params)
    redirect_to expenses_url
  end


  def post_params
    params.require(:expense).permit(:image)
  end

end
