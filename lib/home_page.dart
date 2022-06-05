import 'package:flutter/material.dart';
import 'package:reorderable_list_view_sample/reorderable_list_view_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ReorderableListView Sample')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('ReorderableListViewPage'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ReorderableListViewPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
