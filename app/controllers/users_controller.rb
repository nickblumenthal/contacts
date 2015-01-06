class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render(
      json: user.errors.full_messages #, status: :unprocessable_entity
      )
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render json: @user
    else
      render(
      json: @user.errors.full_messages #, status: :unprocessable_entity
      )
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
    render json: {}
  end

  def favorites
    @favorite_contacts = User.find(params[:id]).contacts.where(favorite: true)
    @favorite_contacts += User.find(params[:id]).contact_shares.join('contacts on contact_shares.contact_id = contact.id where contact_shares.favorite = true')
    #User.find(params[:id]).contact_shares.where(favorite: true).contact
    render json: @favorite_contacts
  end

  private

    def user_params
      params[:user].permit(:username)
    end

end
