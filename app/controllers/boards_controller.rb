class BoardsController < ApplicationController
  def index
  	@boards = Board.all
  end

  def show
  	@board = Board.find(params[:id])
  	@characters = @board.characters.all
  end
end
