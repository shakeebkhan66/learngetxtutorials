import "package:flutter/material.dart";
import "package:get/get.dart";

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {

    Future<void> showPopupMenu(BuildContext context) async {
      await showMenu(
        context: context,
        position: const RelativeRect.fromLTRB(90, 90, 20, 0),
        items: [
          PopupMenuItem(
            value: "English",
            child: ListTile(
              onTap: () {
                Get.updateLocale(const Locale('en', 'US'));
                Navigator.pop(context);
              },
              leading: const Icon(
                Icons.settings,
              ),
              title: const Text(
                "English",
              ),
            ),
          ),
          PopupMenuItem(
            value: "Urdu",
            child: ListTile(
              onTap: () {
                Get.updateLocale(const Locale('ur', 'PK'));
                Navigator.pop(context);
              },
              leading: const Icon(
                Icons.settings,
              ),
              title: const Text(
                "Urdu",
              ),
            ),
          ),
          PopupMenuItem(
            value: "Serbian",
            child: ListTile(
              onTap: () {
                Get.updateLocale(const Locale('sr', 'RS'));
                Navigator.pop(context);
              },
              leading: const Icon(
                Icons.settings,
              ),
              title: const Text(
                "Serbian",
              ),
            ),
          ),
        ],
      );
    }


    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () async {
                await showPopupMenu(context);
              },
              icon: const Icon(
                Icons.more_vert,
              ),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
        ],
      ),
    );
  }
}
