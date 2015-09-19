class ScoresController < ApplicationController
  def show
  	@score = Score.find(params[:id])
  	@board = @score.board
  	@top_scores = Score.where(board_id: @board.id).order(:time).first(10)
  end

  def create
  	@board = Board.find(params[:id])
  	@score = @board.scores.new(user_id: current_user.id, time: params[:time])
  	if @score.save
	  	render js: "window.location.pathname='#{score_path(@score)}'"
	  end
  end  
end
