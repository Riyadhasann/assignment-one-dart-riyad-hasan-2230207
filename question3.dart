// Question 3: Classes & Objects (Difficulty: 3/5) ⭐⭐⭐
/**
 * EXPECTED OUTPUT:
 * Account: 12345, Holder: Alice, Type: Savings, Balance: 800.0
 * Account: 67890, Holder: Bob, Type: Checking, Balance: 400.0
 * Account: 11111, Holder: Charlie, Type: Savings, Balance: 2000.0
 * Insufficient funds for withdrawal of 1000.0 from account 67890
 */

// Create a BankAccount class with the following specifications:
class BankAccount {
  // 1. Properties:
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType; // Savings/Checking

  // 2. Constructor:
  //    - Initialize all properties
  //    - Set initial balance to 0.0
  // TODO: Implement the constructor

  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
      : balance = 0.0;

  // 3. Methods:
  //    - deposit(double amount): Add money to account
  // TODO: Implement the deposit method

  void deposit(double amount) {
    balance += amount;
  }

  //    - withdraw(double amount): Remove money from account (check for sufficient funds)
  // TODO: Implement the withdraw method

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print(
          "Insufficient funds for withdrawal of $amount from account $accountNumber");
    }
  }

  //    - getBalance(): Return current balance
  // TODO: Implement the getBalance method

  double getBalance() {
    return balance;
  }

  //    - displayAccountInfo(): Show account details
  // TODO: Implement the displayAccountInfo method

  void displayAccountInfo() {
    print(
        "Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance");
  }
}

// 4. Create 3 bank accounts and demonstrate:
void main() {
  BankAccount account1 = BankAccount("12345", "ALice", "Savings");

  BankAccount account2 = BankAccount("67890", "bob", "Checking");

  BankAccount account3 = BankAccount("11111", "Charlie", "Savings");

  //    - Depositing money

  account1.deposit(1000.00);
  account2.deposit(500.00);
  account3.deposit(2000.00);

  //    - Withdrawing money

  account1.withdraw(200.00);
  account2.withdraw(100.00);

  //    - Displaying account information

  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();

  //    - Handling insufficient funds scenario

  account2.withdraw(1000.00);
}
