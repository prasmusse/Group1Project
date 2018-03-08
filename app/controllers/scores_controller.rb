class ScoresController < ApplicationController


  # GET /scores
  # GET /scores.json
  def index
    @scores = Score.all
  end

  # GET /scores/1
  # GET /scores/1.json
  def show
  end

  # GET /scores/new
  def new
    @score = Score.new
  end

  # GET /scores/1/edit


  # POST /scores
  # POST /scores.json
  def create
    @score = Score.new(params[:scores])

    respond_to do |format|
      if @score.save

        format.json { render :show, status: :created, location: @score }

      else

        format.json { render json: @score.errors, status: :unprocessable_entity }

      end
    end
  end

  # PATCH/PUT /scores/1
  # PATCH/PUT /scores/1.json
  def update
    respond_to do |format|
      if @score.update(score_params)
        format.html { redirect_to @score, notice: 'Score was successfully updated.' }
        format.json { render :show, status: :ok, location: @score }
      else
        format.html { render :edit }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scores/1
  # DELETE /scores/1.json
  def destroy
    @score.destroy
    respond_to do |format|
      format.html { redirect_to scores_url, notice: 'Score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def setup_score
    @score = Score.new(params)
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def score_params
      params.require(:score).permit(:score, :user_id)
    end
end
