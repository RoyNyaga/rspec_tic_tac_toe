# frozen_string_literal: true

require './lib/tic_tac_toe.rb'

RSpec.describe TicTacToe do

  describe ' #initialize_Tic_tac_toe ' do
    it ' save the correct MARK in each player if player1 is X' do
      game = TicTacToe.new('X')
      cond = game.player1.identity == 'X' && game.player2.identity == 'O' ? true : false
      expect(cond).to be true
    end

    it ' save the correct MARK in each player if player1 is O' do
      game = TicTacToe.new('O')
      cond = game.player1.identity == 'O' && game.player2.identity == 'X' ? true : false
      expect(cond).to be true
    end
  end

  describe '#check_winnner' do
    it 'player is the winner' do
      game = TicTacToe.new('O')
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
