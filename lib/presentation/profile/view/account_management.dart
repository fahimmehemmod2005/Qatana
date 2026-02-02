import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';

import '../../../core/constansts/app_colors.dart';
import '../../../core/route/route_manager.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/show_white_dialog.dart';

class AccountManagement extends StatefulWidget {
  const AccountManagement({super.key});

  @override
  State<AccountManagement> createState() => _AccountManagementState();
}

class _AccountManagementState extends State<AccountManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Account Management'),
      ),
      body: GradientContainer(
        child: SafeArea(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
                side: BorderSide(color: AppColors.normal),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.key,
                  color: Colors.white,
                ),
                title: Text('Deactivated Account'),
                subtitle: Text('Temporary Deactivated your account'),
                onTap: () {
                  showWhiteDialog(
                    context: context,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Disable Account',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.black),),
                        10.verticalSpace,
                        Text('''Are you sure you want to disable your account? ''',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black),textAlign: TextAlign.center,),
                        20.verticalSpace,
                        Row(
                          children: [
                            Expanded(
                              child: PrimaryButton(
                                showGradient: false,
                                backgroundColor: Colors.red,
                                label: 'Disable',
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pushNamed(
                                    context,
                                    Routes.registrationRoute,
                                  );
                                },
                              ),
                            ),
                            10.horizontalSpace,
                            Expanded(
                              child: PrimaryButton(
                                label: 'Cancel',
                                showGradient: false,
                                backgroundColor: Colors.transparent,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            10.verticalSpace,
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
                side: BorderSide(color: AppColors.normal),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.key,
                  color: Colors.white,
                ),
                title: Text('Delete Account'),
                subtitle: Text('Permanently delete your account'),
                onTap: () {
                  showWhiteDialog(
                    context: context,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Delete Account',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.black),),
                        10.verticalSpace,
                        Text('This action will permanently delete your account and all related data.',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black),textAlign: TextAlign.center,),
                        20.verticalSpace,
                        Row(
                          children: [
                            Expanded(
                              child: PrimaryButton(
                                showGradient: false,
                                backgroundColor: Colors.red,
                                label: 'Delete',
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pushNamed(
                                    context,
                                    Routes.registrationRoute,
                                  );
                                },
                              ),
                            ),
                            10.horizontalSpace,
                            Expanded(
                              child: PrimaryButton(
                                label: 'Cancel',
                                showGradient: false,
                                backgroundColor: Colors.transparent,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),)),
      ),
    );
  }
}
