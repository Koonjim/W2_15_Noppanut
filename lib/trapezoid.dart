import 'package:flutter/material.dart';

class Trapezoid extends StatefulWidget {
  const Trapezoid({super.key});

  @override
  State<Trapezoid> createState() => TrapezoidState();
}

class TrapezoidState extends State<Trapezoid> {
  int _front = 0;
  int _behind = 0;
  int _high = 0;
  int _area = 0;

  TextEditingController _frontCtrl = TextEditingController();
  TextEditingController _behindCtrl = TextEditingController();
  TextEditingController _highCtrl = TextEditingController();

  void _calReg (){
    _front = int.tryParse(_frontCtrl.text) ?? 0 ;
    _behind = int.tryParse(_behindCtrl.text) ?? 0 ;
    _high = int.tryParse(_highCtrl.text) ?? 0 ;

    setState(() {
      _area = _front * _behind;
    });
  }
  final InputDecoration _textFieldStyle = InputDecoration(
    border: OutlineInputBorder(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("คำนวณพื้นที่สี่เหลี่ยม"), centerTitle: true),
      body: Column(
        children: [
          SizedBox(height: 30),
          Text("กว้าง $_front  ม. ยาว $_behind ม. พื้นที่คือ $_area ตร.ม.",style: TextStyle(fontSize: 22),),
          SizedBox(height: 30),
          TextField(
            controller: _frontCtrl,
            keyboardType: TextInputType.number,
            decoration: _textFieldStyle.copyWith(label: Text("ความกว้าง"), hint: Text("กรอกความกว้าง")),
          ),
          SizedBox(height: 20),
          TextField(
            controller: _behindCtrl,
            keyboardType: TextInputType.number,
            decoration: _textFieldStyle.copyWith(label: Text("ความยาว"),hint: Text("กรอกความยาว")),
          ),
          SizedBox(height: 30),
          ElevatedButton(onPressed: () => _calReg(), child: Text("คำนวณ")),
        ],
      ),
    );
  }
}
