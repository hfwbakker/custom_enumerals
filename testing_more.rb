@transactions = [10, -15, 25, 30, -24, -70, 999]

def transaction_statement
  @transactions.each { |transaction| yield transaction}
     # You just yield the transaction amount.
end

transaction_statement { |transaction| p "%0.2f" % transaction }
 # The bank that calls the method can define how it is handled.
#=> ["10.00", "-15.00", "25.00", "30.00", "-24.00", "-70.00", "999.00"]

puts "\n\n\n     PHRESHHHHH   \n\n\n\n"

def transaction_statement2
  @transactions.each { |transaction| p yield transaction }
  # `p` is called within our method now instead of within the block
end

transaction_statement2 { |transaction| "%0.2f" % transaction }
#=> ["10.00", "-15.00", "25.00", "30.00", "-24.00", "-70.00", "999.00"]

puts "\n\n\n     PHRESHHHHH   \n\n\n\n"

def transaction_statement3
  formatted_transactions = []
  @transactions.each do |transaction|
    formatted_transactions << yield(transaction) # We've put () around transaction just for clarity here but they aren't required.
  end
  
  p formatted_transactions
end

transaction_statement3 do |transaction|
  "%0.2f" % transaction
end
#=> ["10.00", "-15.00", "25.00", "30.00", "-24.00", "-70.00", "999.00"]