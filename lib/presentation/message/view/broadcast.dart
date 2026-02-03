import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constansts/app_images.dart';
import '../../widgets/gradient_container.dart';
import '../widgets/message_card.dart';

class Broadcast extends StatefulWidget {
  const Broadcast({super.key});

  @override
  State<Broadcast> createState() => _BroadcastState();
}

class _BroadcastState extends State<Broadcast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: GradientContainer(
        child: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                  children: [
                    10.verticalSpace,
                    MessageCard(
                      image: AppImages.user6,
                      name: 'Maria Garcia',
                      subtitle: "Behind the scenes of today's✨",
                      count: '5',
                      time: '2:30 AM',
                      views: '12.1K',
                      onTap: (){},
                    ),
                  ],
                )
            )
        ),
      ),
    );
  }
}
