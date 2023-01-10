//how to create main class for flutter project?
void main() {
  User userx = User('luigi', 21);

  print(userx.age);
  userx.login();

  User usery = User('mario', 33);
  print(usery.username);
  usery.login();
}

class User {
  String username;
  int age;

  User(this.username, this.age);

  void login() {
    print('user logged in');
  }
}
