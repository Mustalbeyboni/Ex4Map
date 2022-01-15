// TODO Complete the model class User.
//-----------------------------------------------------------------------------------------------------------------------------
//? Things to do:
// Define the following methods:
//   a. the 'fromJson' constructor
//   b. the 'toJson' method
//-----------------------------------------------------------------------------------------------------------------------------

class User {
  int _id;
  String _name;
  String _photoUrl;
  String _login;
  String _password;

  get id => _id;
  set id(value) => _id = value;

  get name => _name;
  set name(value) => _name = value;

  get photoUrl => _photoUrl;
  set photoUrl(value) => _photoUrl = value;

  get login => _login;
  set login(value) => _login = value;

  get password => _password;
  set password(value) => _password = value;

  User(
      {int id,
      String name = '',
      String photoUrl = '',
      String login = '',
      String password = ''})
      : _id = id,
        _name = name,
        _photoUrl = photoUrl,
        _login = login,
        _password = password;

  User.copy(User from)
      : this(
            id: from.id,
            name: from.name,
            photoUrl: from.photoUrl,
            login: from.login,
            password: from.password);

  // a. the 'fromJson' constructor
  User.fromJson(Map<String, dynamic> json)
      : _id = json['id'],
        _name = json['name'],
        _photoUrl = json['photoUrl'],
        _login = json['login'],
        _password = json['password'];

  // b. the 'toJson' method
  Map<String, dynamic> toJson() => {
        'id': _id,
        'name': _name,
        'photoUrl': _photoUrl,
        'login': _login,
        'password': _password,
      };
}
