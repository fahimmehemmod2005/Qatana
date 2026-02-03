import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/constansts/app_images.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/show_white_dialog.dart';

class BlockUser extends StatefulWidget {
  const BlockUser({super.key});

  @override
  State<BlockUser> createState() => _BlockUserState();
}

class _BlockUserState extends State<BlockUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Block Users'),
      ),
      body: GradientContainer(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    BlockCard(
                      image: AppImages.user3,
                      onTap: (){
                        showWhiteDialog(
                            context: context,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(onPressed: (){}, child: Text('Unblock',style: TextStyle(color: Colors.red,fontSize: 15.sp),))
                            ],
                          )
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BlockCard extends StatelessWidget {
  final void Function()? onTap;
  final String? image;
  const BlockCard({
    super.key, this.onTap, this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60.h,
        width: 60.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(image ?? ''),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
