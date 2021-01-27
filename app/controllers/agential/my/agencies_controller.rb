module Agential
  class My::AgenciesController < My::BaseController
    before_action :set_agency, only: [:show, :edit, :update, :destroy]

    def index
      @agencies = current_user.agencies.includes(:client).page(params[:page])
    end

    def new
      @agency = current_user.agencies.build
      @agency.build_client
    end

    def create
      @agency = current_user.agencies.build(agency_params)

      if @agency.save
        render 'create', locals: { return_to: mine_agencies_url }
      else
        render :new, locals: { model: @agency }, status: :unprocessable_entity
      end
    end

    def show
    end

    def edit
    end

    def update
      @agency.assign_attributes(agency_params)

      unless @agency.save
        render :edit, locals: { model: @agency }, status: :unprocessable_entity
      end
    end

    def destroy
      @agency.destroy
    end

    private
    def set_agency
      @agency = Agency.find(params[:id])
    end

    def client_params
      params.fetch(:client, {}).permit(
        :real_name,
        :nick_name,
        :birthday_type,
        :birthday,
        :gender,
        :note,
        :avatar,
        agencies_attributes: {}
      )
    end

    def agency_params
      params.fetch(:agency, {}).permit(
        :relation,
        :client_type,
        :commission_ratio,
        :note,
        client_attributes: {}
      )
    end

  end
end
