class ExpensesController < ApplicationController
  def index
  	 @concept = params[:concept]
  	 @category = params[:category_id]
  	 puts @concept
  	 puts @category
     @expenses = Expense.where("category_id LIKE ? AND concept LIKE ?" ,"%#{@category}%", "%#{@concept}%")
  end
end


