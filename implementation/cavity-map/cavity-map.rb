n = gets.chomp.to_i
mat = Array.new(n) {Array.new(n)}

n.times do |j|
    line = gets.chomp.split('')
    mat[j] = line
end

mat.each_with_index do |row, i|
    row.each_with_index do |col, j|
        current_value = col
        if i > 0 && i < n-1 && j > 0 && j < n-1 
            #check north
            next if mat[i-1][j] >= current_value
            #check south
            next if mat[i+1][j] >= current_value
            #check east
            next if mat[i][j-1] >= current_value
            #check west
            next if mat[i][j+1] >= current_value
            mat[i][j] = "X"
        end
    end
    puts row.join('')
end