class InvitesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user,   only: [:edit, :update, :destroy]
  before_action :set_invite, only: [:show, :edit, :update]


  def index
    @invites = Invite.all
  end

  def show
  end

  def new
    @invite = current_user.build_invite
  end

  def create
    @invite = current_user.build_invite(invite_params)

    respond_to do |format|
      if @invite.save
        format.html { redirect_to @invite, notice: 'Invite was successfully created.' }
        format.json { render :show, status: :created, location: @invite }
      else
        format.html { render :new }
        format.json { render json: @pinvite.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @invite.update(invite_params)
        format.html { redirect_to @invite, notice: 'Invite was successfully updated.' }
        format.json { render :show, status: :ok, location: @invite }
      else
        format.html { render :edit }
        format.json { render json: @invite.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_invite
      @invite = Invite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invite_params
      params.require(:invite).permit(:background_color, :font_color,
      :font_family, :header_title, :header_image, :wedding_date, :bride_image,
      :bride_name, :bride_description, :groom_image, :groom_name, :groom_description,
      :about_title, :about_description, :map_coordinates, :map_description)
    end

    # Confirms the correct user.
    def correct_user
      @invite = Invite.find(params[:id])
      flash[:notice] = 'Dont have permission to modify this post'
      redirect_to(root_path) unless current_user.id == @invite.user_id
    end

end
