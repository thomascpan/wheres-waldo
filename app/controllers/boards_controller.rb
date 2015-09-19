class BoardsController < ApplicationController
  def index
  	@boards = Board.all
  end

  def show
  	@board = Board.find(params[:id])
  	@characters = @board.characters.all
  end

  # def check_character
  # 	@board = Board.find(params[:id])
  # 	@characters = @board.characters.all
  # 	respond_to do |format|
  # 		format.html
  # 		format.json
  # 	end
  # end
end
