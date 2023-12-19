import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starter_project/src/features/favorite/view/favorite_screen.dart';
import 'package:starter_project/src/features/home/view/home_screen.dart';
import 'package:starter_project/src/features/profile/view/profile_screen.dart';

import '../config/constant.dart';
import '../config/theme/colors.dart';
import '../cubits/navigation_cubit.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  Future<bool> _onWillPop(BuildContext context) async {
    bool exitApp = await showDialog(
      context: context,
      useSafeArea: true,
      barrierColor: Colors.black.withOpacity(0.25),
      builder: (context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Apakah anda yakin keluar aplikasi ?",
                  style: TextStyle(
                    fontSize: AppConstants.kFontSizeL,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, true);
                        },
                        child: const Text("Ya"),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, false);
                        },
                        child: const Text("Tidak"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );

    return exitApp;
  }

  Widget _buildBody(BuildContext context, state) {
    switch (state) {
      case 0:
        return const HomeScreen();
      case 1:
        return const FavoriteScreen();
      case 2:
        return const ProfileScreen();
      default:
        return const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: BlocBuilder<NavigationCubit, int>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: UIColors.white,
            resizeToAvoidBottomInset: true,
            body: _buildBody(context, state),
            bottomNavigationBar: BottomAppBar(
              height: kBottomNavigationBarHeight + 2,
              padding: EdgeInsets.zero,
              elevation: 5,
              child: BottomNavigationBar(
                onTap: (index) {
                  context.read<NavigationCubit>().changeIndex(index);
                },
                currentIndex: state,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(state == 0 ? Icons.home : Icons.home_outlined),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                        state == 1 ? Icons.favorite : Icons.favorite_border),
                    label: "Favorite",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(state == 2
                        ? Icons.person_outline
                        : Icons.person_outline_outlined),
                    label: "Profile",
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
