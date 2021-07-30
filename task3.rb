def do_it(string)
    counts = Hash.new(0)
    for i in 0...string.length
      counts[string[i]] += 1
    end  
    counts_counts = Hash.new(0)
    counts.each_key do |key|
      counts_counts[counts[key]] += 1
    end
    if counts_counts.length == 1
      return 'YES'
    elsif counts_counts.length == 2
      first = counts_counts.keys[0]
      second = counts_counts.keys[1]
  
      if counts_counts[first] == 1 && counts_counts[second] == 1
        if (first - second).abs == 1
          return 'YES'
        end
      elsif counts_counts[first] == 1
        if first == 1 || first - 1 == second
          return 'YES'
        end
      elsif counts_counts[second] == 1
        if second == 1 || second - 1 == first
          return 'YES'
        end
      end
    end
    return 'NO'
  end
  puts do_it(gets.chomp)