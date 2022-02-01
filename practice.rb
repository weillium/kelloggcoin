# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { from_user: nil, to_user: "ben", amount: 20000 },
  { from_user: nil, to_user: "brian", amount: 20000 },
  { from_user: "ben", to_user: "evan", amount: 9000 },
  { from_user: "brian", to_user: "anthony", amount: 7000 },
  { from_user: "evan", to_user: "anthony", amount: 400 },
  { from_user: "ben", to_user: "anthony", amount: 1500 },
  { from_user: "anthony", to_user: "ben", amount: 4500 },
  { from_user: "anthony", to_user: "evan", amount: 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
balance = [
  { user: "nil", balance: 40000},
  { user: "ben", balance: 0},
  { user: "brian", balance: 0},
  { user: "evan", balance: 0},
  { user: "anthony", balance: 0},
]

for transaction in blockchain 

  if transaction[:from_user].nil?
    from_user = "nil"
  else
    from_user = transaction[:from_user]
  end

  if transaction[:to_user].nil?
    to_user = "nil"
  else
    to_user = transaction[:to_user]
  end

  amount = transaction[:amount]

  for account in balance 

    if account[:user] == from_user
      account[:balance] -= amount 
    end

    if account[:user] == to_user 
      account[:balance] += amount 
    end

  end

end

for account in balance 

  if account[:user] != "nil"
    puts "#{account[:user]}'s KelloggCoin balance is #{account[:balance]}"
  end

end