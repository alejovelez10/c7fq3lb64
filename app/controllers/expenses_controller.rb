class ExpensesController < ApplicationController
  before_action :authenticate_user!


  def index
        
    if !params[:concept].blank?

  	 @expenses = Expense.where("concept LIKE ? " ,"%#{params[:concept]}%")
       

  	else

  		@expenses = Expense.all
    
    end

    if !params[:category_id].blank?

  	 @expenses = @expenses.where(category_id: params[:category_id])
  


  		
    end

  end
end

