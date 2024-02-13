import 'package:flutter/material.dart';
import 'package:flutterspot/data.dart';

class SideMenuView extends StatelessWidget {
  const SideMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 280.0,
      color: Theme.of(context).primaryColor,
      child: Column(children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/spotify_logo.png',
                height: 55.0,
                filterQuality: FilterQuality.high,
              ),
            ),
          ],
        ),
        _SideMenuIconTabView(
          iconData: Icons.home,
          title: 'Home',
          onTap: () {},
        ),
        _SideMenuIconTabView(
          iconData: Icons.search,
          title: 'Search',
          onTap: () {},
        ),
        _SideMenuIconTabView(
          iconData: Icons.audiotrack,
          title: 'Radio',
          onTap: () {},
        ),
        const SizedBox(
          height: 12.0,
        ),
        _LibraryPlayListView(),
      ]),
    );
  }
}

class _SideMenuIconTabView extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTap;

  const _SideMenuIconTabView({
    Key? key,
    required this.iconData,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Theme.of(context).iconTheme.color,
        size: 28.0,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onTap,
    );
  }
}

class _LibraryPlayListView extends StatefulWidget {
  const _LibraryPlayListView({Key? key}) : super(key: key);

  @override
  State<_LibraryPlayListView> createState() => __LibraryPlayListViewState();
}

class __LibraryPlayListViewState extends State<_LibraryPlayListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        physics: const ClampingScrollPhysics(),
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 18.0),
                child: Text(
                  'YOUR LIBRARY',
                  style: Theme.of(context).textTheme.headlineMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              ...yourLibrary
                  .map(
                    (element) => ListTile(
                      dense: true,
                      title: Text(
                        element,
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: () {},
                    ),
                  )
                  .toList(),
            ],
          ),
        ],
      ),
    );
  }
}
