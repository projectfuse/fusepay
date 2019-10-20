class PaymentLinkController < ApplicationController
  def show
    @payment_link_id = params[:id]
    render "payment_link/show"
  end
end
