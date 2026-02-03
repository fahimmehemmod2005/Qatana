import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qatana/core/resource/app_styles.dart';
import 'package:qatana/presentation/widgets/gradient_container.dart';
import 'package:qatana/presentation/widgets/input_field.dart';
import 'package:qatana/presentation/widgets/primary_button.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Create Group'),
      ),
      body: GradientContainer(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Group Photo", style: AppStyles.size14w600()),
                10.verticalSpace,
                Center(
                  child: Container(
                    height: 90,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.camera_alt),
                      ),
                    ),
                  ),
                ),
                10.verticalSpace,
                InputField(
                  topLabel: 'Group Name',
                  hintText: 'Vip support group',
                ),
                10.verticalSpace,
                InputField(
                  maxLine: 10,
                  topLabel: 'Description',
                  hintText:
                      '''Exclusive group for my VIP subscribers. Share ideas, get early updates, and connect with fellow supporters! 💜''',
                ),
                10.verticalSpace,
                Center(child: TextButton(onPressed: (){}, child: Text('Add member')),),
                10.verticalSpace,
                Text("Group Permission", style: AppStyles.size14w600()),
                5.verticalSpace,
                Card(child: CheckboxListTile(value: true, onChanged: (value){},title: Text('Text message'),)),
                Card(child: CheckboxListTile(value: true, onChanged: (value){},title: Text('Image and videos'),)),
                Card(child: CheckboxListTile(value: true, onChanged: (value){},title: Text('Voice message'),)),
                Card(child: CheckboxListTile(value: false, onChanged: (value){},title: Text('Files and Document'),)),
                Card(child: CheckboxListTile(value: true, onChanged: (value){},title: Text('Voice message'),)),
                10.verticalSpace,
                Text("Admin Approval", style: AppStyles.size14w600()),
                5.verticalSpace,
                Card(child: CheckboxListTile(value: true, onChanged: (value){},title: Text('Approve new members'),)),
                Card(child: CheckboxListTile(value: true, onChanged: (value){},title: Text('Anyone can join directly'),)),
              10.verticalSpace,
                PrimaryButton(
                  label: 'Create Group',
                  onPressed: (){
                    Navigator.pop(context);
                  },
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
