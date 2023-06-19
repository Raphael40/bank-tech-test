# bank-tech-test
Mock interview tech test

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