require './lib/tic_tac_toe.rb'

RSpec.describe TicTacToe do
    describe '#check_winnner' do
        it "player is the winner" do
            tic_tac_toe = TicTacToe.new('X')
            tic_tac_toe.board.main_board[0][0] = 'X'
            tic_tac_toe.board.main_board[0][1] = 'X'
            tic_tac_toe.board.main_board[0][2] = 'X'
            mark = ''
            if tic_tac_toe.board.main_board[0][0] == tic_tac_toe.board.main_board[0][1] &&
                tic_tac_toe.board.main_board[0][1] == tic_tac_toe.board.main_board[0][2]
                mark ='X'
            end
            expect(mark).to eql('X')
        end
    end 
end