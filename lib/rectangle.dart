import 'package:flutter/material.dart';

class Rectangle extends StatefulWidget {
  const Rectangle({super.key});

  @override
  State<Rectangle> createState() => RectangleState();
}

class RectangleState extends State<Rectangle> {
  int _width = 0;
  int _lenght = 0;
  int _area = 0;

  TextEditingController _widthCtrl = TextEditingController();
  TextEditingController _lenghtCtrl = TextEditingController();

  void _calReg (){
    _width = int.tryParse(_widthCtrl.text) ?? 0 ;
    _lenght = int.tryParse(_lenghtCtrl.text) ?? 0 ;

    setState(() {
      _area = _width * _lenght;
    });
  }
  final InputDecoration _textFieldStyle = InputDecoration(
    border: OutlineInputBorder(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(title: Text("คำนวณพื้นที่สี่เหลี่ยม"), centerTitle: true),
      body: Column(
        children: [
          SizedBox(height: 30),
          Text("กว้าง $_width  ม. ยาว $_lenght ม. พื้นที่คือ $_area ตร.ม.",style: TextStyle(fontSize: 22),),
          SizedBox(height: 30),
          TextField(
            controller: _widthCtrl,
            keyboardType: TextInputType.number,
            decoration: _textFieldStyle.copyWith(label: Text("ความกว้าง"), hint: Text("กรอกความกว้าง"),filled: true,fillColor: Colors.green[200]),

          ),
          SizedBox(height: 20),
          TextField(
            controller: _lenghtCtrl,
            keyboardType: TextInputType.number,
            decoration: _textFieldStyle.copyWith(label: Text("ความยาว"),hint: Text("กรอกความยาว"),filled: true,fillColor: Colors.green[200]),
          ),
          SizedBox(height: 30),
          ElevatedButton(onPressed: () => _calReg(), child: Text("คำนวณ"),style: TextButton.styleFrom(backgroundColor: Colors.blue[200],
            foregroundColor: Colors.black,)),
        ],
      ),
    );
  }
}
