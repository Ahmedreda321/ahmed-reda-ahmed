class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposited: \$${amount}, New Balance: \$${balance}');
  }

  void withdraw(double amount) {
    if (amount > balance) {
      throw Exception('Insufficient funds');
    } else if (amount < 0) {
      throw Exception('Invalid amount');
    } else {
      balance -= amount;
      print('Withdrawn: \$${amount}, New Balance: \$${balance}');
    }
  }
}

void main() {
  BankAccount account = BankAccount(1000);
  account.deposit(500);

  try {
    account.withdraw(2000);
  } catch (e) {
    print('Error: $e');
  }
}
