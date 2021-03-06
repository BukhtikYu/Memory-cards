# frozen_string_literal: true

class CardsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_board
  before_action :set_card, only: [:show, :edit, :update, :destroy, :update_confidence, :move]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_card

  def new
    @card = @board.cards.build
  end

  def create
    @card = @board.cards.build(card_params)
    if @card.save
      redirect_to board_cards_path(@board), notice: t('controllers.cards.create')
    else
      render 'new'
    end
  end

  def show
  end

  def index
    @cards = @board.cards
    respond_to do |format|
      format.html
      format.csv { send_data @cards.to_csv, filename: "#{@board.name}.csv" }
    end
  end

  def edit
  end

  def update
    @card = Card.find(card_params['card_id'])
    if @card.update(card_params.except(:card_id))
      redirect_to board_cards_path(@board), notice: t('controllers.cards.update')
    else
      render 'edit'
    end
  end

  def destroy
    @card.destroy
    redirect_to board_cards_path(@board), notice: t('controllers.cards.destroy')
  end

  def update_confidence
    respond_to do |format|
      if @card.update(params.permit(:confidence_level))
        @board.confidence_board = ConfidenceCounter.new(@board).count_board_confidence
        @board.save
        format.js
      end
    end
  end

  def move
    @card.insert_at(params[:position].to_i)
    head :ok
  end

  private

  def card_params
    params.require(:card).permit(:question, :answer, :card_id)
  end

  def get_board
    board = Board.find(params[:board_id])
    if board.user == current_user
      @board = board
    else
      no_access_board
    end
  end

  def set_card
    @card = @board.cards.find(params[:id])
  end

  def invalid_card
    redirect_to boards_path, alert: t('controllers.cards.invalid')
  end

  def no_access_board
    redirect_to boards_path, alert: t('controllers.cards.no_access')
  end
end
