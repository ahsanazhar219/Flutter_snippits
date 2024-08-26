void main() {
  bankAccount account = bankAccount();
  account.balance = -1;
  account.deposit(1);
  print('current balance is: ${account.balance}');

  account.withdraw(22);
  print('current balance is: ${account.balance}');
}

class bankAccount {
  double _balance = 0.0;

  double get balance {
    return _balance;
  }

  void set balance(double newbalance) {
    if (newbalance > 0) {
      _balance = newbalance;
    } else {
      print('invalid balance ...');
    }
  }

  void deposit(double ammount) {
    if (ammount > 0) {
      _balance += ammount;
      print('$ammount is deposited in your account');
    } else {
      print('invalid deposit ammount');
    }
  }

  void withdraw(double ammount) {
    if (ammount > 0 && ammount <= _balance) {
      _balance = _balance - ammount;
      print('$ammount is withdrawn from your account');
    } else {
      print('Error: you don\'t have enough balance to withdraw');
    }
  }
}
