class ExpensesController < ApplicationController
  def index

  	 @expenses = Expense.where("category_id LIKE ? AND concept LIKE ?" ,"%#{params[:category_id]}%", "%#{params[:concept]}%")
  end
end


