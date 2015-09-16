class ScoresController < ApplicationController
  def show
  	@score = Score.find(params[:id])
  	@top_scores = Score.order(:time).first(10)
  	# Need board id params
  	# @top_scores = Score.where(board_id: params[:board_id]).order(:time).first(10)
  end
end
