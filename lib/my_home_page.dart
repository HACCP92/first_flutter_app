import 'package:flutter/material.dart';

// Camel Case
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //변수, 인스턴스, 오브젝트, 상수
  int number = 10;
  String _text = ('');
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('카운터'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              SizedBox(height: 30),
              Text(
                '숫자',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
              Text(
                '$number',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 70,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('ElevateButton');
                },
                child: Text('ElevatedButton'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('TextButton'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('OutlinedButton'),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: '글자',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (text) {
                        _text = text;
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        print(_textController.text);

                        //화면갱신
                        setState(() {});
                      },
                      child: Text('login'),
                    ),
                  ),
                ],
              ),
              Text(_textController.text),
              Image.network(
                'https://letter.wepick.kr/wp-content/uploads/2022/08/image-21.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.red,
                width: 120,
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/pix.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //화면 갱신
          setState(() {});
          number++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
