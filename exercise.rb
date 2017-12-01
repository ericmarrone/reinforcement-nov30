classroom = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]


# hash = Hash.new
# h = {}.compare_by_identity
# classroom.each_with_index { |row, index|
#   hash[index+1] = Hash[row.map.with_index.to_a]
#   }
#

h = Hash[(1..classroom.size).zip classroom]

h.each do |key, value|
  value.each_with_index do |v|
    x = Hash[(1..value.size).zip value]
    h[key] = x
  end
end

#part 1
# h.each do |index, row|
#   row.each do |seat, name|
#     if name == nil
#       puts "Row #{index} seat #{seat} is free"
#     end
#   end
# end

#part2

h.each do |index, row|
  row.each do |seat, name|
    if name == nil
      puts "Row #{index} seat #{seat} is free. Do you want to sit there? (y/n)"
      user_input = gets.chomp
        if user_input == "y"
          puts "What is your name?"
          name = gets.chomp
          classroom[index-1][seat-1] = "#{name}"
          puts classroom.inspect
        end
    end
  end
end
