import 'package:advanced_lockscreen/custom_widgets/custom_button.dart';
import 'package:advanced_lockscreen/logic/listen_buttons.dart';
import 'package:advanced_lockscreen/logic/params.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

class LockScreen extends StatefulWidget {
  const LockScreen({Key? key}) : super(key: key);

  @override
  _LockScreenState createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
  List<int> _arrPassword = [];
  final _storage = SharedPreferences.getInstance();
  final _listener = ListenButtons();
  var _num_user = 0;
  var _operation = "";
  List<String> _fillButtons = [
    "1",
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0'
  ];

  @override
  void initState() {
    _fillButtons.shuffle();
    //_test_pref();
    _check_storage();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "LockScreen",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          PopupMenuButton<String>(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            itemBuilder: (BuildContext context) {
              return choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
            onSelected: (String choice) {
              if (choice == changePassword) {
                PASSWORD = "";
                Navigator.pushNamed(context, "/password");
              }
            },
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.30,
              child: Center(
                  child: Text(
                _check_password(PASSWORD)[1],
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 5.0,
                ),
              ))),
          Padding(padding: EdgeInsets.only(top: 59)),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.50,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5.0,
                  mainAxisExtent: 85.0,
                ),
                children: [
                  ButtonCustom(
                    text: _fillButtons[0],
                    isActive: _check_password(PASSWORD)[0],
                    onTap: () {
                      setState(() {
                        PASSWORD += _fillButtons[0];
                      });
                    },
                  ),
                  ButtonCustom(
                    text: _fillButtons[1],
                    isActive: _check_password(PASSWORD)[0],
                    onTap: () {
                      setState(() {
                        PASSWORD += _fillButtons[1];
                      });
                    },
                  ),
                  ButtonCustom(
                    text: _fillButtons[2],
                    isActive: _check_password(PASSWORD)[0],
                    onTap: () {
                      setState(() {
                        PASSWORD += _fillButtons[2];
                      });
                    },
                  ),
                  ButtonCustom(
                    text: _fillButtons[3],
                    isActive: _check_password(PASSWORD)[0],
                    onTap: () {
                      setState(() {
                        PASSWORD += _fillButtons[3];
                      });
                    },
                  ),
                  ButtonCustom(
                    text: _fillButtons[4],
                    isActive: _check_password(PASSWORD)[0],
                    onTap: () {
                      setState(() {
                        PASSWORD += _fillButtons[4];
                      });
                    },
                  ),
                  ButtonCustom(
                    text: _fillButtons[5],
                    isActive: _check_password(PASSWORD)[0],
                    onTap: () {
                      setState(() {
                        PASSWORD += _fillButtons[5];
                      });
                    },
                  ),
                  ButtonCustom(
                    text: _fillButtons[6],
                    isActive: _check_password(PASSWORD)[0],
                    onTap: () {
                      setState(() {
                        PASSWORD += _fillButtons[6];
                      });
                    },
                  ),
                  ButtonCustom(
                    text: _fillButtons[7],
                    isActive: _check_password(PASSWORD)[0],
                    onTap: () {
                      setState(() {
                        PASSWORD += _fillButtons[7];
                      });
                    },
                  ),
                  ButtonCustom(
                    text: _fillButtons[8],
                    isActive: _check_password(PASSWORD)[0],
                    onTap: () {
                      setState(() {
                        PASSWORD += _fillButtons[8];
                      });
                    },
                  ),
                  ButtonCustom(
                    text: "AGAIN",
                    onTap: () {
                      setState(() {
                        _listener.onClickAgain();
                      });
                    },
                  ),
                  ButtonCustom(
                    text: _fillButtons[9],
                    isActive: _check_password(PASSWORD)[0],
                    onTap: () {
                      setState(() {
                        PASSWORD += _fillButtons[9];
                      });
                    },
                  ),
                  ButtonCustom(
                    text: "CLEAR",
                    isActive: _check_password(PASSWORD)[0],
                    onTap: () {
                      setState(() {
                        _listener.onClickClear(PASSWORD);
                      });
                    },
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  dynamic _check_password(String password) {
    if (password.length >= 5) {
      String tmpS = "";
      Map<int, String> map = {
        1: _fillButtons[0],
        2: _fillButtons[1],
        3: _fillButtons[2],
        4: _fillButtons[3],
        5: _fillButtons[4],
        6: _fillButtons[5],
        7: _fillButtons[6],
        8: _fillButtons[7],
        9: _fillButtons[8],
        0: _fillButtons[9],
      };
      var q = 0;
      for (var i in _arrPassword) {
        _arrPassword[q] = int.parse(map[i].toString());
        switch (_operation) {
          case "MULTIPLY":
            _arrPassword[q] = _arrPassword[q] * _num_user;
            break;
          case "ADDITION":
            _arrPassword[q] = _arrPassword[q] + _num_user;
            break;
          case "DIVISION":
            _arrPassword[q] = _arrPassword[q] ~/ _num_user;
            break;
          case "SUBTRACTION":
            _arrPassword[q] = _arrPassword[q] - _num_user;
            break;
        }
        int num = _arrPassword[q];
        if (num < 0) {
          num *= -1;
          _arrPassword[q] = num;
        } else if (num > 9) {
          var s = num.toString();
          num = int.parse(s[s.length - 1]);
          _arrPassword[q] = num;
        }
        q++;
      }

      _arrPassword.forEach((element) => tmpS += element.toString());
      _arrPassword.clear();
      if (password == tmpS) return [false, "CORRECT"];
      return [false, "INCORRECT"];
    }
    return [true, password];
  }

  Future<void> _check_storage() async {
    final storage = await _storage;
    String? tmpS = storage.getString(BUTTONS);
    if (tmpS != null) {
      _operation = storage.getString(OPERATION)!;
      _num_user = storage.getInt(USER_NUMBER)!;
      _arrPassword.clear();
      for (int i = 0; i < tmpS.length; i++)
        _arrPassword.add(int.parse(tmpS[i]));
    }
    else
      Navigator.pushNamedAndRemoveUntil(context, "/password", (route) => false);
  }

  Future<void> _test_pref() async {
    final storage = await _storage;
    await storage.setString(BUTTONS, "13795");
    await storage.setString(OPERATION, ADDITION);
    await storage.setInt(USER_NUMBER, 2);
  }
}
