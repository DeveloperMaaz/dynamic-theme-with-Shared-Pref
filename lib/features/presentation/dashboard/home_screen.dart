import 'package:flutter/material.dart';
import 'package:theming/features/post/card_post.dart';
import 'package:theming/features/presentation/constants/context_extension.dart';
import 'package:provider/provider.dart';
import 'package:theming/features/provider/provider_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<ThemeSetting>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
                data.toggleTheme();
                data.dark =! data.dark;
            },
            child: const Icon(Icons.add)),
        appBar: AppBar(
          centerTitle: true,
          title: const SizedBox(
            width: 40,
            height: 30,
            child: Image(
              image: AssetImage("assets/images/twitter.png"),
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.drag_handle,
              size: 30,
              color: context.colorScheme.primary,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: 25,
                height: 25,
                child: Image(
                  image: const AssetImage("assets/images/send.png"),
                  color: context.colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: context.colorScheme.background,
                  ),
                  child: ListTile(
                    trailing: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      height: 40,
                      width: 40,
                      child: Image(
                        image:
                            const AssetImage("assets/images/image-gallery.png"),
                        color: context.colorScheme.primary,
                      ),
                    ),
                    title: Text(
                      "What's Happening ?",
                      style: context.primaryTextTheme.subtitle1!.copyWith(
                        color: context.colorScheme.surface,
                      ),
                    ),
                    leading: Container(
                      decoration: BoxDecoration(
                        color: context.colorScheme.surface,
                        borderRadius: BorderRadius.circular(
                          32,
                        ),
                      ),
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(3),
                      child: const Image(
                        image: AssetImage("assets/images/profil.png"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusablePostCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
