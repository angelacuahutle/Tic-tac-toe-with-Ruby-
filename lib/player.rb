class Player
    WINNING_COMBINATIONS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
    attr_accessor :name
    attr_writer :selection
    
    def initialize(name, marker)
        @name = name
        @marker = marker
        @selection = []
    end

    def initialize
        #players name 
        #players marks
        #display collection should be an array 
    def make_move 
        #value and board as parameters
        #display board 
    def check_win 
        #variable = false
        #check if the collection is = 3
        #check possible wining combination 
    end
end    