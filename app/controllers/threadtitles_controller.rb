class ThreadtitlesController < ApplicationController

  # GET /threadtitles
  # GET /threadtitles.json
  def index
    @threadtitles = Threadtitle.all
  end

  def all
    @threadtitles = Threadtitle.all
  end
  # GET /threadtitles/1
  # GET /threadtitles/1.json
  def show
    if logged_in?
      @threadtitle = Threadtitle.find(params[:id])
      @messages = @threadtitle.messages
    end
  end

  # GET /threadtitles/new
  def new
    @threadtitle = Threadtitle.new(threadtitle_params)
  end

  # GET /threadtitles/1/edit
  def edit
  end

  # POST /threadtitles
  # POST /threadtitles.json
  def create
    @threadtitle = Threadtitle.new(threadtitle_params)
    if @threadtitle.save
      redirect_to @threadtitle
    else
      flash[:danger] = 'Invalid'
      redirect_to threadtitlehome_path
    end
  end

  # PATCH/PUT /threadtitles/1
  # PATCH/PUT /threadtitles/1.json
  def update
    respond_to do |format|
    end
  end

  # DELETE /threadtitles/1
  # DELETE /threadtitles/1.json
  def destroy
    @threadtitle.destroy
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def threadtitle_params
      params.require(:threadtitle).permit(:name)
    end
end
