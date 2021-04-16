import 'package:flutter/material.dart';

class TabbedViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Tab 1',
                ),
                Tab(
                  text: 'Tab 2',
                ),
                Tab(
                  text: 'Tab 3',
                ),
              ],
            ),
            title: Text('Tabbed View'),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Tab 1 content')),
              Center(child: Text('Tab 2 content')),
              Center(child: Text('Tab 3 content'))
            ],
          ),
        ),
      ),
    );
  }
}
