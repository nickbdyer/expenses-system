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

   def destroy
   @expense = Expense.find(params[:id])
   @expense.destroy
   redirect_to expenses_url
 end


  def post_params
    params.require(:expense).permit(:date, :category, :participants, :image)
  end

end
