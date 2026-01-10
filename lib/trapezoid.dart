import 'package:flutter/material.dart';

class Trapezoid extends StatefulWidget {
  const Trapezoid({super.key});

  @override
  State<Trapezoid> createState() => TrapezoidState();
}

class TrapezoidState extends State<Trapezoid> {
  double _front = 0;
  double _behind = 0;
  double _high = 0;
  double _area = 0;


  TextEditingController _frontCtrl = TextEditingController();
  TextEditingController _behindCtrl = TextEditingController();
  TextEditingController _highCtrl = TextEditingController();

  void _calReg (){
    _front = double.tryParse(_frontCtrl.text) ?? 0 ;
    _behind = double.tryParse(_behindCtrl.text) ?? 0 ;
    _high = double.tryParse(_highCtrl.text) ?? 0 ;


    setState(() {
      _area = ((_front + _behind) / 2) * _high;


    });
  }
  final InputDecoration _textFieldStyle = InputDecoration(
    border: OutlineInputBorder(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(title: Text("คำนวณพื้นที่สี่เหลี่ยมคางหมู"), centerTitle: true),
      body: Column(
        children: [
          SizedBox(height: 30),
          Text("ด้านหน้า $_front  ม. ด้านหลัง $_behind ม. ความสูง $_high ม. ",style: TextStyle(fontSize: 18),),
          Text("พื้นที่คือ $_area ตร.ม.",style: TextStyle(fontSize: 20),),
          SizedBox(height: 30),
          TextField(
            controller: _frontCtrl,
            keyboardType: TextInputType.number,
            decoration: _textFieldStyle.copyWith(label: Text("ด้านหน้า"), hint: Text("กรอกด้านหน้า"),filled: true,fillColor: Colors.green[200]),
          ),
          SizedBox(height: 20),
          TextField(
            controller: _behindCtrl,
            keyboardType: TextInputType.number,
            decoration: _textFieldStyle.copyWith(label: Text("ด้านหลัง"),hint: Text("กรอกด้านหลัง"),filled: true,fillColor: Colors.green[200]),
          ),
          SizedBox(height: 20),
          TextField(
            controller: _highCtrl,
            keyboardType: TextInputType.number,
            decoration: _textFieldStyle.copyWith(label: Text("ความสูง"),hint: Text("กรอกความสูง"),filled: true,fillColor: Colors.green[200]),
          ),
          SizedBox(height: 30),
          ElevatedButton(onPressed: () => _calReg(), child: Text("คำนวณ"),style: TextButton.styleFrom(backgroundColor: Colors.blue[200],
          foregroundColor: Colors.black,),),
        ],
      ),
    );
  }
}
