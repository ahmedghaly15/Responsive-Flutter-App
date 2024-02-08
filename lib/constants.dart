import 'package:responsive_adaptive/core/utils/app_assets.dart';
import 'package:responsive_adaptive/models/all_expenses_model.dart';
import 'package:responsive_adaptive/models/drawer_item_model.dart';
import 'package:responsive_adaptive/models/latest_transaction_model.dart';

class Constants {
  Constants._();

  static const List<DrawerIteModel> drawerItems = <DrawerIteModel>[
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

  static const List<AllExpensesModel> allExpensesItems = <AllExpensesModel>[
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

  static const List<LatestTransactionModel> latestTransactionItems =
      <LatestTransactionModel>[
    LatestTransactionModel(
      image: AppAssets.imagesAvatar1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    LatestTransactionModel(
      image: AppAssets.imagesAvatar2,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
    ),
    LatestTransactionModel(
      image: AppAssets.imagesAvatar1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
  ];
}
