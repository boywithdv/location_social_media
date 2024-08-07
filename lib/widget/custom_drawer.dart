import 'package:flutter/material.dart';
import 'package:location_social_media/widget/custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  final void Function()? onSignOut;
  const CustomDrawer({super.key, required this.onSignOut});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //header
              const DrawerHeader(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 64,
                ),
              ),
              //home list tile
              CustomListTile(
                icon: Icons.home,
                text: 'H O M E',
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
          //logout listtile
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: CustomListTile(
                icon: Icons.logout, text: 'L O G O U T', onTap: onSignOut),
          ),
        ],
      ),
    );
  }
}
