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

    @expenses = @expenses.where(user_id: current_user.id)

  end
end

wget http://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.gz
tar -xzf ruby-2.3.1.tar.gz
