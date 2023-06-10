import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add, size: 40),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          TabBar(
            indicatorColor: Theme.of(context).primaryColor,
            controller: _tabController,
            tabs: const [
              Tab(
                text: 'Lidos',
              ),
              Tab(
                text: 'Quero ler',
              ),
              Tab(
                text: 'Trocas',
              ),
              Tab(
                text: 'Doados',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(child: SizedBox()
                    // ListView.builder(
                    //   padding: EdgeInsets.all(4.0),
                    //   itemCount: produtosPromocao.length,
                    //   itemBuilder: (context,index){
                    //     ProductData data = produtosPromocao[index];
                    //      return ProductTile('list', 100.0, data);
                    //   }
                    // )
                    ),
                Center(child: SizedBox()),
                Center(child: SizedBox()),
                Center(child: SizedBox()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
