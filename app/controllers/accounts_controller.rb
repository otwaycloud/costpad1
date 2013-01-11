class AccountsController < ApplicationController
  def show
	@account = Account.find(params[:id])	
  end

  def new
  	@account = Account.new
  end

  def create
    @account = Account.new(params[:account])
    if @account.save
      # Handle a successful save.
    else
      render 'new'
    end
end
end
