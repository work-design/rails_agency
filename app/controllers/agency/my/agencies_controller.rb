class Agency::My::AgenciesController < Agency::My::BaseController
  before_action :set_agency, only: [:show, :edit, :update, :destroy]

  def index
    @agencies = current_agent.agent_agencies.includes(:client).page(params[:page])
  end

  def new
    @agency = current_agent.agent_agencies.build
  end

  def create
    @agency = current_agent.agent_agencies.build(agency_params)

    unless @agency.save
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
    params.fetch(:pupil, {}).permit(
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
      :client_id,
      :commission_ratio,
      :note,
      client_attributes: {}
    )
  end

end
