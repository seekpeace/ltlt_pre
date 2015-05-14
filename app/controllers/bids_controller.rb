class BidsController < UsersController
  before_action :logged_in_user, only: [:edit, :update, :index]
  before_action :correct_user,   only: [:edit, :update]

  def show
    @bid = Bid.find(params[:id])
    home_tag = @bid.home_id
    #below first gets the id of the handler in () then gets fax#
    agent = Handler.find(Home.find(home_tag).handler_id)
    fax_number = agent.handler_fax
    # @users = User.all.paginate(page: params[:page])

    # @bid = Bid.find(params[:id])
    # need to add id index to bids join table first
    # redirect_to @user


    pdf = Prawn::Document.new
    pdf.text "This is an ofer to buy your home at #{plot.street_address} for #{bid.value}"
    pdf.render_file "buy_offer#{bid.id}.pdf"
  end
end
