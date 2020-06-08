import 'package:flutter/material.dart';

class SplitRow extends StatefulWidget {
  @override
  _SplitRowState createState() => _SplitRowState();
}

class _SplitRowState extends State<SplitRow> {
  int _index = 0;
  Map<String, Widget> splitRows = {};
  Map records = {};
  Map col1 = {};

  // Crete Widget Split Row
  Widget _splitRow(index) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          height: 40.0,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.remove_circle),
                iconSize: 24,
                color: Color(0xFFFF3B30),
                onPressed: () {
                  print(index);
                  removeItem(index);
                },
              ),
              Container(
                width: 100,
                child: TextField(
                  keyboardType: TextInputType.numberWithOptions(
                    signed: false,
                    decimal: true,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Put direction here...',
                    border: InputBorder.none,
                  ),
                  style: TextStyle(fontFamily: 'Lekton'),
                  onChanged: (value) {
                    col1["$index"] = value;
                  },
                ),
              ),
              _VerticalDivider(),
              Text('data $index'),
            ],
          ),
        ),
        _HorizontalDivider(),
      ],
    );
  }

  // Create Widget Add Row
  Widget _addRow() {
    return Container(
      height: 40,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            height: 40,
            color: Colors.white,
            child: IconButton(
              icon: Icon(Icons.add_circle),
              iconSize: 24,
              color: Color(0xFF34C759),
              onPressed: () {
                addItem();
              },
            ),
          ),
          Text('New Item')
        ],
      ),
    );
  }

  // Add splitRow
  void addItem() {
    int key = _index;
    print('Index antes $_index');
    setState(() {
      splitRows['$key'] = _splitRow(key);
      ++_index;
    });
    print(splitRows);
  }

  // Remove splitRow
  void removeItem(key) {
    print("Index: " + key.toString());
    print(splitRows);
    print(col1);
    setState(() {
      splitRows.remove('$key');
      col1.remove('$key');
    });
  }

  // Save Values
  void saveItems() {
    records = {'qty': col1};
    print(records);
  }

  @override
  void initState() {
    super.initState();
    splitRows['$_index'] = _splitRow(_index);
    ++_index;
    // splitRows['$_index'] = _addRow(_index);
    // ++_index;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('Directions'),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  saveItems();
                },
              )
            ],
          ),
          backgroundColor: Color(0xFFE5E5EA),
          body: Column(
            children: <Widget>[
              Container(
                  constraints: BoxConstraints(
                    minHeight: 40.0,
                    maxHeight: 500.0,
                    minWidth: double.infinity,
                    maxWidth: double.infinity,
                  ),
                  child: ListView(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Text('DIRECTIONS'),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: splitRows.length,
                        itemBuilder: (BuildContext context, int index) {
                          String key = splitRows.keys.elementAt(index);
                          return splitRows[key];
                        },
                        physics: NeverScrollableScrollPhysics(),
                      ),
                      _addRow()
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class _HorizontalDivider extends StatelessWidget {
  const _HorizontalDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Divider(
        height: 2.0,
      ),
    );
  }
}

class _VerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 2,
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: VerticalDivider(
        width: 2.0,
      ),
    );
  }
}
