import 'package:flutter/material.dart';
import 'package:habit_tracker/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: FittedBox(
            child: Switch(
                value: Provider.of<ThemeProvider>(context).isDarkMode,
                activeColor: Colors.green.shade500,
                onChanged: (value) => {
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme(),
                    }),
          ),
        ),
      ),
    );
  }
}
