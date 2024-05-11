import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

void main() {
  runApp(MaterialApp(
    home: ToDoList(),
  ));
}

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  final List<String> _toDoList = <String>[];
  final TextEditingController _textFieldController = TextEditingController();
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'To-Do List',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.purple, Colors.deepPurple],
          ),
        ),
        child: ListView.builder(
          itemCount: _toDoList.length,
          itemBuilder: (BuildContext context, int index) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color:
                    _selectedIndex == index ? Colors.blueAccent : Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: ListTile(
                title: Text(
                  _toDoList[index],
                  style: TextStyle(
                    color: _selectedIndex == index
                        ? Color.fromARGB(255, 234, 180, 255)
                        : Colors.black,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      _toDoList.removeAt(index);
                    });
                  },
                ),
                onLongPress: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                onTap: () {
                  setState(() {
                    _selectedIndex = -1;
                  });
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _displayDialog(context);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    );
  }

  Future<void> _displayDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tambahkan tugas ke daftar'),
          content: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(hintText: "Masukkan tugas di sini"),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('TAMBAH'),
              onPressed: () {
                setState(() {
                  if (EmailValidator.validate(_textFieldController.text)) {
                    _toDoList.add(_textFieldController.text);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Email tidak valid!'),
                      duration: Duration(seconds: 2),
                    ));
                  }
                });
                _textFieldController.clear();
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
