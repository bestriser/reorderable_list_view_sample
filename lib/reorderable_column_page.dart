import 'package:flutter/material.dart';
import 'package:reorderables/reorderables.dart';

/// reorderables 0.5.0 のReadmeからのコピペです
///
/// https://pub.dev/packages/reorderables
class ReorderableColumnPage extends StatefulWidget {
  const ReorderableColumnPage({Key? key}) : super(key: key);

  @override
  State<ReorderableColumnPage> createState() => _ReorderableColumnPageState();
}

class _ReorderableColumnPageState extends State<ReorderableColumnPage> {
  List<Widget> _rows = [];

  @override
  void initState() {
    super.initState();
    _rows = List<Widget>.generate(
        50,
        (int index) => Text('This is row $index',
            key: ValueKey(index), textScaleFactor: 1.5));
  }

  @override
  Widget build(BuildContext context) {
    void _onReorder(int oldIndex, int newIndex) {
      setState(() {
        Widget row = _rows.removeAt(oldIndex);
        _rows.insert(newIndex, row);
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Text('ReorderableColumnPage')),
      body: ReorderableColumn(
        header: const Text('THIS IS THE HEADER ROW'),
        footer: const Text('THIS IS THE FOOTER ROW'),
        crossAxisAlignment: CrossAxisAlignment.start,
        onReorder: _onReorder,
        children: _rows,
      ),
    );
  }
}
