class AdminController < ApplicationController
  def index
  	authorize! :update, Gift
  	@gifts = Gift.paginate(:page => params[:page], :per_page => 3)
  	@accounts = Account.all
  	@future_occasions = Occasion.order_by_date.future
  end
end
