import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/constansts/app_colors.dart';
import 'package:qatana/core/resource/app_styles.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';

import '../../../core/constansts/app_images.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GradientContainer(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                5.verticalSpace,
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: AppColors.primaryGradient,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      BackButton(),
                      GestureDetector(
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(AppImages.user1),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        onTap: (){},
                      ),
                      10.horizontalSpace,
                      Text('Alex Alex', style: AppStyles.size16w700()),
                      const Spacer(),
                      IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
                    ],
                  ),
                ),
                10.verticalSpace,
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(AppImages.user1),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            10.horizontalSpace,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(15.0),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xFF2d1b4e),
                                          Color(0xFF1a1330),
                                          Color(0xFF3d2463),
                                          Color(0xFF1f1635),
                                        ],
                                        stops: [0.0, 0.3, 0.7, 1.0],
                                      ),
                                    ),
                                    child: Text(
                                      '''Hi! I'm your AI assistant. I can help you create amazing images, answer questions about AI art, and provide tips for better prompts. How can I help you today?''',
                                      style: AppStyles.size14w400(color: Colors.white),
                                    ),
                                  ),
                                  Text('10:20 AM'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        10.verticalSpace,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(15.0),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xFF2d1b4e),
                                          Color(0xFF1a1330),
                                          Color(0xFF3d2463),
                                          Color(0xFF1f1635),
                                        ],
                                        stops: [0.0, 0.3, 0.7, 1.0],
                                      ),
                                    ),
                                    child: Text(
                                      '''Hi! I'm your AI assistant. I can help you create amazing images, answer questions about AI art, and provide tips for better prompts. How can I help you today?''',
                                      style: AppStyles.size14w400(color: Colors.white),
                                    ),
                                  ),
                                  Text('10:21 AM'),
                                ],
                              ),
                            ),
                            10.horizontalSpace,
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(AppImages.fahim),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        10.verticalSpace
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: AppColors.primaryGradient,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: TextFormField(
                          maxLines: 10,
                          minLines: 1,
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Type your Message...',
                            hintStyle: TextStyle(color: Colors.white),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.attach_file, size: 24, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.mic, size: 24, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.send, size: 24, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                10.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
