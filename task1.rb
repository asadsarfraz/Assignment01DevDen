#task1
def safe_place(n,k)
  if(k>=n)
        p 'K cannot be greater than n'    
  else 
        p "the safe position is: #{k+1}" 
  end
end
puts "Enter Persons: "
n=gets.chomp
puts "Enter k, which tobe killed: "
k=gets.chomp
safe_place(n.to_i,k.to_i)