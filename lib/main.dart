import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String currentLinkDrawer = 'Home';
  final List<Map<String, dynamic>> linkDrawer = [
    {'title': 'Trade Marketing'},
    {'title': 'Visto Plus'},
    {'title': 'Ventas'},
    {'title': 'Wms'},
    {'title': 'Recursos Humanos'},
    {'title': 'Trade Marketing'},
    {'title': 'Visto Plus'},
    {'title': 'Ventas'},
    {'title': 'Wms'},
    {'title': 'Recursos Humanos'},
    {'title': 'Trade Marketing'},
    {'title': 'Visto Plus'},
    {'title': 'Ventas'},
    {'title': 'Wms'},
    {'title': 'Recursos Humanos'},
    {'title': 'Trade Marketing'},
    {'title': 'Visto Plus'},
    {'title': 'Ventas'},
    {'title': 'Wms'},
    {'title': 'Recursos Humanos'},
    {'title': 'Trade Marketing'},
    {'title': 'Visto Plus'},
    {'title': 'Ventas'},
    {'title': 'Wms'},
    {'title': 'Recursos Humanos'},
    {'title': 'Trade Marketing'},
    {'title': 'Visto Plus'},
    {'title': 'Ventas'},
    {'title': 'Wms'},
    {'title': 'Recursos Humanos'},
    {'title': 'Trade Marketing'},
    {'title': 'Visto Plus'},
    {'title': 'Ventas'},
    {'title': 'Wms'},
    {'title': 'Recursos Humanos'},
    {'title': 'Trade Marketing'},
    {'title': 'Visto Plus'},
    {'title': 'Ventas'},
    {'title': 'Wms'},
    {'title': 'Recursos Humanos'},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Expanded(
                flex: 1,
                child: CustomScrollView(
                  slivers: <Widget>[
                    const SliverAppBar(
                      pinned: true,
                      expandedHeight: 200.0,
                      backgroundColor: Color.fromRGBO(60, 63, 65, 1.0),
                      flexibleSpace: FlexibleSpaceBar(
                        title: Text('VISTONY'),
                        background: FlutterLogo(),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return ListTile(
                            title: Text(linkDrawer[index]['title']),
                            leading: const Icon(Icons.ac_unit),
                            trailing: const Icon(Icons.abc),
                            onTap: () {
                              setState(() {
                                currentLinkDrawer = linkDrawer[index]['title'];
                              });
                            },
                          );
                        },
                        childCount: linkDrawer.length,
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 6,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    pinned: true,
                    expandedHeight: 200.0,
                    backgroundColor: const Color.fromRGBO(43, 43, 43, 1.0),
                    flexibleSpace: FlexibleSpaceBar(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05),
                            child: Text(currentLinkDrawer),
                          ),
                        ],
                      ),

                    ),
                  ),
                  SliverContent(title: currentLinkDrawer),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SliverContent extends StatefulWidget {
  const SliverContent({super.key, required this.title});

  final String title;

  @override
  State<SliverContent> createState() => _SliverContentState();
}

class _SliverContentState extends State<SliverContent> {
  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Center(
        child: Text(widget.title),
      ),
    );
  }
}
