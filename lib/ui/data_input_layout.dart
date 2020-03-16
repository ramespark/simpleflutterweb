import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DataInputLayout extends StatelessWidget {
  const DataInputLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final answerOptions = <String>[
      'Option A',
      'Option B',
      'Option C',
      'Option D'
    ];

    final List<DropdownMenuItem<String>> itemList = answerOptions
        .map((String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ))
        .toList();

    return Center(
      child: Container(
        width: 1280,
        height: 1280,
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
              child: Table(
            children: <TableRow>[
              TableRow(
                children: <Widget>[
                TextField(
                    keyboardType: TextInputType.multiline,
                    style: Theme.of(context).textTheme.headline4,
                    decoration: InputDecoration(
                        labelText: 'Question',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)))),
                    onSubmitted: (value) =>
                        Fluttertoast.showToast(msg: 'Question: ${value}'))
              ]),
              TableRow(children: <Widget>[
                TextField(
                    keyboardType: TextInputType.multiline,
                    style: Theme.of(context).textTheme.headline4,
                    decoration: InputDecoration(
                        labelText: 'Option A',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)))),
                    onSubmitted: (value) =>
                        Fluttertoast.showToast(msg: 'Question: ${value}'))
              ]),
              TableRow(children: <Widget>[
                TextField(
                    keyboardType: TextInputType.multiline,
                    style: Theme.of(context).textTheme.headline4,
                    decoration: InputDecoration(
                        labelText: 'Option B',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)))),
                    onSubmitted: (value) =>
                        Fluttertoast.showToast(msg: 'Question: ${value}'))
              ]),
              TableRow(children: <Widget>[
                TextField(
                    keyboardType: TextInputType.multiline,
                    style: Theme.of(context).textTheme.headline4,
                    decoration: InputDecoration(
                        labelText: 'Option C',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)))),
                    onSubmitted: (value) =>
                        Fluttertoast.showToast(msg: 'Question: ${value}'))
              ]),
              TableRow(children: <Widget>[
                TextField(
                    keyboardType: TextInputType.multiline,
                    style: Theme.of(context).textTheme.headline4,
                    decoration: InputDecoration(
                        labelText: 'Option D',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)))),
                    onSubmitted: (value) =>
                        Fluttertoast.showToast(msg: 'Question: ${value}'))
              ]),
              
              TableRow(children: <Widget>[
                TextField(
                    keyboardType: TextInputType.multiline,
                    style: Theme.of(context).textTheme.headline4,
                    decoration: InputDecoration(
                        labelText: 'Hint',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)))),
                    onSubmitted: (value) =>
                        Fluttertoast.showToast(msg: 'Question: ${value}'))
              ]),
              TableRow(children: <Widget>[
                OutlineButton(
                  child: Text('Save'),
                  onPressed: ()=> Fluttertoast.showToast(msg: 'Saved'),
                )
              ])
            ],
          )),
        ),
      ),
    );
  }
}
