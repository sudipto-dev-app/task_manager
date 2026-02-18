import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/ui/utils/asset_paths.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            // 'assets/images/background.svg',
            AssetPaths.backgroundSvg,
            width: double.maxFinite,
            height: double.maxFinite,
          ),
          Center(
            child: SvgPicture.network(
              'https://raw.githubusercontent.com/rupomsoft/Flutter-Batch/f5a69f6101221370609f1e58b8bd684dcbaf3856/Flutter/Source%20Code/25%20Task%20manager%20project/ui_assets/logo.svg',
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
