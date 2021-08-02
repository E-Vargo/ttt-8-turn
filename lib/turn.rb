b = [" "," "," "," "," "," "," "," "," "]

def display_board(b)

    divider = "-----------"

    puts " #{b[0]} | #{b[1]} | #{b[2]} "
    puts "#{divider}"
    puts " #{b[3]} | #{b[4]} | #{b[5]} "
    puts "#{divider}"
    puts " #{b[6]} | #{b[7]} | #{b[8]} "
end 

def valid_move?(b, index)
    if index.between?(0,8) && !position_taken?(b, index)
        true
    else
        false
    end
end


def position_taken?(b, index)
    if b[index] == "" || b[index] == " " || b[index] == nil
        false
    else
        true
    end
end

def input_to_index(input)
index = input.to_i - 1
end

def move(b, index, value="X")
    b[index] = value
end

def turn(b)
    puts "Please enter 1-9:"

input = gets.strip

index = input_to_index(input) 

if valid_move?(b, index) 
    move(b, index, value="X")
else
    turn(b)
end
display_board(b)
end