import 'package:flutter/material.dart';
import 'package:skadi/skadi.dart';
import 'package:skadi_example/widgets/example_scaffold.dart';
import 'package:skadi_example/widgets/section.dart';

class StyleAndDecorationExample extends StatefulWidget {
  const StyleAndDecorationExample({Key? key}) : super(key: key);

  @override
  State<StyleAndDecorationExample> createState() => _StyleAndDecorationExampleState();
}

class _StyleAndDecorationExampleState extends State<StyleAndDecorationExample>
    with SingleTickerProviderStateMixin, DeferDispose {
  late TabController tabController = createDefer(() => TabController(length: 3, vsync: this));

  @override
  Widget build(BuildContext context) {
    return ExampleScaffold(
      title: "Style and Decoration example",
      children: [
        const Section(
          title: "ShadowInputBorder",
          isRow: false,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Username",
                errorText: "use this instead of other method to show error text correctly",
                errorStyle: TextStyle(fontSize: 10),
                border: ShadowInputBorder(
                  elevation: 2.0,
                  fillColor: Colors.white,
                ),
              ),
            )
          ],
        ),
        Section(
          title: "DotTabIndicator",
          isRow: false,
          children: [
            TabBar(
              controller: tabController,
              indicator: const DotTabIndicator(color: Colors.red),
              tabs: const [
                Tab(text: "Food"),
                Tab(text: "Drink"),
                Tab(text: "Cake"),
              ],
            ),
          ],
        ),
        Section(
          title: "SmallUnderlineTabIndicator",
          isRow: false,
          children: [
            TabBar(
              controller: tabController,
              isScrollable: true,
              indicator: const SmallUnderLineTabIndicator(
                color: Colors.red,
                paddingLeft: 16,
              ),
              tabs: const [
                Tab(text: "Food"),
                Tab(text: "Drink"),
                Tab(text: "Cake"),
              ],
            ),
          ],
        ),
        Section(
          title: "SkadiColor",
          isRow: true,
          children: [
            Container(
              width: 100,
              height: 100,
              color: SkadiColor.fromHexString("FF0000"),
            ),
            Container(
              width: 100,
              height: 100,
              color: SkadiColor.fromRGB(125, 255, 23),
            ),
            Container(
              width: 100,
              height: 100,
              color: SkadiColor.toMaterial(const Color.fromARGB(255, 176, 251, 2)),
            ),
          ],
        ),
      ],
    );
  }
}
