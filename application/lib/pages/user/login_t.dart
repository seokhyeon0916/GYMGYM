import 'package:application/main.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // email, password 입력하는 부분을 제외한 화면을 탭하면, 키보드 사라지게 GestureDetector 사용
      body: Center(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 50)),
                Form(
                    child: Theme(
                  data: ThemeData(
                      //primaryColor: Colors.grey,
                      inputDecorationTheme: const InputDecorationTheme(
                          labelStyle:
                              TextStyle(color: Colors.teal, fontSize: 15.0))),
                  child: Container(
                      padding: const EdgeInsets.all(40.0),
                      child: Builder(builder: (context) {
                        return Column(
                          children: [
                            TextField(
                              // 이메일 입력하는 부분
                              controller:
                                  controller, //우항에 있는 controller에 비밀번호 값이 저장됨
                              autofocus: true,
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                labelText: 'Enter email',
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextField(
                              // 비밀번호 입력하는 부분
                              controller:
                                  controller2, //우항에 있는 controller2에 이메일값이 저장됨
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  labelText: 'Enter password'),
                              keyboardType: TextInputType.text,
                              obscureText: true, // 비밀번호 안보이도록 하는 것
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            ButtonTheme(
                                minWidth: 100.0,
                                height: 50.0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (controller.text == 'qwer1@naver.com' &&
                                        controller2.text == '1234') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const MyWidget()));
                                    } else if (controller.text ==
                                            'qwer1@naver.com' &&
                                        controller2.text != '1234') {
                                      showSnackBar(context,
                                          const Text('Wrong password'));
                                    } else if (controller.text !=
                                            'qwer1@naver.com' &&
                                        controller2.text == '1234') {
                                      showSnackBar(
                                          context, const Text('Wrong email'));
                                    } else {
                                      showSnackBar(context,
                                          const Text('Check your info again'));
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orangeAccent),
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                ))
                          ],
                        );
                      })),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void showSnackBar(BuildContext context, Text text) {
  final snackBar = SnackBar(
    content: text,
    backgroundColor: const Color.fromARGB(255, 112, 48, 48),
  );

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
