# frozen_string_literal: true

require './lib/tic_tac_toe.rb'

RSpec.describe TicTacToe do

  let(:game) { TicTacToe.new('X') }

  describe ' #initialize_Tic_tac_toe ' do

    it ' creating a game with arg X, return if the marks are correct' do
      cond = game.player1.identity == 'X' && game.player2.identity == 'O' ? true : false
      expect(cond).to be true
    end

    it ' creating a game with arg X return if the marks are incorrect' do
      cond = game.player1.identity == 'O' || game.player2.identity == 'X' ? true : false
      expect(cond).to be false
    end

  end

  describe '#check_winnner' do

    it 'player is the winner' do
      game.board.save_choise_player(game.player1.identity, 1)
      game.board.save_choise_player(game.player1.identity, 2)
      game.board.save_choise_player(game.player1.identity, 3)
      cond = false
      if game.board.main_board[0][0] == game.board.main_board[0][1] &&
         game.board.main_board[0][1] == game.board.main_board[0][2] &&
         game.board.main_board[0][2] == game.player1.identity
          cond = true
      end
      expect(cond).to be true
    end

  end
end
