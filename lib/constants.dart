import 'package:responsive_adaptive/core/utils/app_assets.dart';
import 'package:responsive_adaptive/models/all_expenses_model.dart';
import 'package:responsive_adaptive/models/drawer_item_model.dart';

class Constants {
  Constants._();

  static const drawerItems = <DrawerIteModel>[
    DrawerIteModel(
      title: 'Dashboard',
      image: AppAssets.imagesDashboard,
    ),
    DrawerIteModel(
      title: 'My Transaction',
      image: AppAssets.imagesMyTransctions,
    ),
    DrawerIteModel(
      title: 'Statistics',
      image: AppAssets.imagesStatistics,
    ),
    DrawerIteModel(
      title: 'Wallet Account',
      image: AppAssets.imagesWalletAccount,
    ),
    DrawerIteModel(
      title: 'My Investments',
      image: AppAssets.imagesMyInvestments,
    ),
  ];

  static const allExpensesItems = <AllExpensesModel>[
    AllExpensesModel(
      title: 'Balance',
      image: AppAssets.imagesBalance,
      date: 'April 2022',
      price: '20,129',
    ),
    AllExpensesModel(
      title: 'Income',
      image: AppAssets.imagesIncome,
      date: 'April 2022',
      price: '20,129',
    ),
    AllExpensesModel(
      title: 'Expenses',
      image: AppAssets.imagesExpenses,
      date: 'April 2022',
      price: '20,129',
    ),
  ];
}
