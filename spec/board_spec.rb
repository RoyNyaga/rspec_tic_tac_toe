# frozen_string_literal: true

require './lib/tic_tac_toe.rb'

RSpec.describe Board do
  describe ' #initialize_Board ' do
    it ' test the correct number on each cell of the grid' do
      board = Board.new
      cond = true
      m_board = board.main_board.flatten
      m_board.each_with_index do |cell, index|
        cond = cell.to_i == (index + 1)
        break unless cond
      end
      expect(cond).to be true
    end
  end

  describe '#check space' do
    it 'returns true when a space is availabe in the board' do
      board = Board.new
      cond = board.space?
      expect(cond).to be true
    end

    it 'returns false when a space is not availabe in the board' do
      board = Board.new
      9.times do |n|
        board.save_choise_player('X', n + 1)
      end
      cond = board.space?
      expect(cond).to be false
    end
  end

  describe ' #check_choise_player' do
    it ' when a player select a number of the empty grid ' do
      board = Board.new
      cond = board.check_choise_player(1) && board.check_choise_player(2)
      expect(cond).to be true
    end

    it ' when a player select a number of the grid with saves' do
      board = Board.new
      board.main_board[0][0] = 'X'
      board.main_board[0][1] = 'O'
      board.main_board[0][2] = 'X'

      cond = board.check_choise_player(1) &&
             board.check_choise_player(2) &&
             board.check_choise_player(3)

      expect(cond).to be false
    end
  end

  describe ' #save_choise_player ' do
    it ' when a mark is saved in the grid of each Player selection' do
      board = Board.new

      board.save_choise_player('X', 1)
      board.save_choise_player('O', 2)
      cond = board.main_board[0][1] == 'O' && board.main_board[0][0] == 'X'

      expect(cond).to be true
    end
  end
end
