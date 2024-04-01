import 'package:flutter/material.dart';

class AllMessageUser extends StatefulWidget {
  AllMessageUser({super.key});
  @override
  State<AllMessageUser> createState() => _AllMessageUser();
}

class _AllMessageUser extends State<AllMessageUser> {
  final TextEditingController _textEditingController = TextEditingController();
  final List<String> _outputList = [];
  String _addAlert = "追加しました。";
  void _clearText() {
    setState(() {
      if (_textEditingController.text != "") {
        _addAlert = "追加しました。";
        _outputList.add(_textEditingController.text);
      } else {
        _showDialog(context);
      }
    });
    _textEditingController.clear();
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(_textEditingController.text),
            content: Text(_addAlert, style: TextStyle(color: Colors.indigo)),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK"))
            ],
          );
        });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "Chat",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
              leading: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.black,
              ),
              actions: [
                Icon(
                  Icons.chat_outlined,
                  color: Colors.black,
                ),
                Icon(
                  Icons.edit_outlined,
                  color: Colors.black,
                  size: 10,
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 200,
                    height: 30,
                    child: TextFormField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        labelText: "Search",
                      ),
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            //メッセージをクリックした時の処理を記述する
                            print("message click");
                          },
                          child: Text(
                            "メッセージ",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        GestureDetector(
                          child: Text(
                            "リクエスト",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 10),
                          ),
                          onTap: () {
                            //ここにリクエストをクリックした時の処理を記述する
                            print("request click");
                          },
                        ),
                        SizedBox(
                          width: 1,
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black38,
                  ),
                  ListTile(
                    title: Text(
                      "Username",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Active 13m ago"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigo,
                      radius: 30,
                    ),
                    onTap: () {
                      print("クリックされました");
                    },
                    trailing: Icon(
                      Icons.camera_alt,
                      size: 20,
                    ),
                  ),
                  Divider(
                    color: Colors.black12,
                  )
                ],
              ),
            )));
  }
}
