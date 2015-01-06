class ContactSharesController < ApplicationController
  def create
    contact_share = ContactShare.new(contact_shares_params)
    if contact_share.save
      render json: contact_share
    else
      render json: contact_share.errors.full_messages
    end
  end

  def destroy
    contact_share = ContactShare.find(params[:id])
    contact_share.delete
    render json: {}
  end

  private

  def contact_shares_params
    params[:contact_share].permit(:user_id, :contact_id)
  end
end
