n = gets.chomp.to_i

n.times do 
    line = gets.chomp.to_i
    line = '%0*b' % [32, line]
    puts line.tr('01','10').to_i(2)
end