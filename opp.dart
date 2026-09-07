class BankAccount {
  String accountHolderName;
  String accountNumber;
  double _balance;

  BankAccount(this.accountHolderName, this.accountNumber, this._balance);

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("After Deposit: Balance: ${_balance.toInt()}");
    } else {
      print("Deposit amount must be positive.");
    }
  }

  void withdraw(double amount) {
    if (amount > _balance) {
      print("Insufficient balance! Cannot withdraw $amount");
    } else if (amount <= 0) {
      print("Withdrawal amount must be positive.");
    } else {
      _balance -= amount;
      print("After Withdrawal: Balance: ${_balance.toInt()}");
    }
  }

  void displayAccountInfo() {
    print("Account Holder: $accountHolderName Account Number: $accountNumber Balance: ${_balance.toInt()}");
  }
}

void main() {
  BankAccount account1 = BankAccount("Rahim", "1001", 5000);
  
  account1.displayAccountInfo();
  account1.deposit(2000);
  account1.withdraw(1500);

  print("");

  BankAccount account2 = BankAccount("Karim", "1002", 8000);
  
  account2.displayAccountInfo();
}
