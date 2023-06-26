# bank-tech-test
Mock interview tech test
This is a simple implementation of an Account class that allows you to perform basic banking operations such as depositing and withdrawing money, as well as Print_statement class that prints a statement of transactions in the correct format.

## Installation instructions
make sure you are on the correct version of Ruby
```
; rvm get stable
; rvm use ruby --latest --install --default
```
Next, install and init bundler
```
; gem install bundler
; bundle init
```
Then, add and init RSpec so you can run tests
```
; bundle add rspec
; rspec --init
```
## App criteria

Given a client makes a deposit of 1000 on 10-01-2023
And a deposit of 2000 on 13-01-2023
And a withdrawal of 500 on 14-01-2023
When she prints her bank statement
Then she would see
```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

## Usage
Instantiate an Account object using the following code:
```
account = Account.new
```
To deposit money into the account, use the deposit method and pass the amount to be deposited as an argument:
```
account.deposit(amount)
```
To withdraw money from the account, use the withdraw method and pass the amount to be withdrawn as an argument:
```
account.withdraw(amount)
```
To print a statement of all transactions made on the account, instantiate a Print_class method:
```
statement = Print_statement.new
```
Then pass the account into the print_statement method as an argument and it will compile a statement out of the transactions
```
puts account.print_statement
```
--------------------------------------------------------------------
See these screenshots for a demonstration:

![single deposit and withdrawal](Screenshot%202023-06-23%20at%2015.27.24.png)

![Multiple transactions through multiple account classes](Screenshot%202023-06-23%20at%2015.33.42.png)
