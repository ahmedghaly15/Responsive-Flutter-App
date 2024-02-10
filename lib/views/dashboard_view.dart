import 'package:flutter/material.dart';
import 'package:responsive_adaptive/core/widgets/responsive_layout.dart';
import 'package:responsive_adaptive/widgets/custom_drawer.dart';
import 'package:responsive_adaptive/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_adaptive/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_adaptive/widgets/desktop_dashboard_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xffF7F9FA),
              leading: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
                color: Colors.black,
              ),
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: ResponsiveLayout(
        mobileLayout: (context) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: DashboardMobileLayout(),
        ),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DesktopDashboardLayout(),
      ),
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
    );
  }
}
