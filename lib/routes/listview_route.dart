import 'package:flutter/material.dart';
import 'package:flutter_animation_test/widgets/sliver_flexible_header.dart';

class ListViewRoute extends StatelessWidget {
  const ListViewRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
      appBar: AppBar(),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverFlexibleHeader(
            floating: true,
            child: ColoredBox(
              color: Colors.amber.shade800,
              child: const Padding(
                padding: EdgeInsetsDirectional.all(24),
                child: Text("Floating"),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.amber.shade200,
                  height: 50,
                  child: Text('Item: test $index'),
                );
              },
              childCount: 15,
            ),
          ),
        ],
      ),
    );
  }
}
