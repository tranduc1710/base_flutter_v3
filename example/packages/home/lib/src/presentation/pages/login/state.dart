class LoginState {
  int count = 0;

  LoginState({this.count = 0});

  LoginState init() {
    return LoginState(count: 0);
  }

  LoginState clone() {
    count++;
    return LoginState(count: count);
  }
}
