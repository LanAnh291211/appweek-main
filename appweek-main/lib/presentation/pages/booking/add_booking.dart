import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:uuid/uuid.dart';

import '../../../data/model/infor.dart';
import '../../../shared/values/strings.dart';
import '../../../shared/widgets/widges.dart';
import '../../bloc/todo bloc/todo_bloc.dart';

class AddBooking extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _subTitleController = TextEditingController();
  final TextEditingController _releaseDayController = TextEditingController();
  final TextEditingController _rateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      appBar: CustomAppBar(),
      children: [
        CustomTextField(
          hintText: AppString.enterTitle,
          controller: _titleController,
          hintStyle: CustomTextStyle.bold(color: AppColors.nobel, fontSize: FontSize.veryBig),
          haveOutlineBorder: false,
          style: CustomTextStyle.bold(fontSize: FontSize.veryBig),
        ),
        CustomTextField(
          hintText: AppString.enterSubTitle,
          controller: _subTitleController,
          haveOutlineBorder: false,
          maxLine: null,
          style: CustomTextStyle.regular(),
        ),
        CustomTextField(
          hintText: AppString.enterReleaseDay,
          controller: _releaseDayController,
          haveOutlineBorder: false,
          maxLine: null,
          style: CustomTextStyle.regular(),
        ),
        CustomTextField(
          hintText: AppString.enterRate,
          controller: _rateController,
          haveOutlineBorder: false,
          maxLine: null,
          style: CustomTextStyle.regular(),
        ),
      ],
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const CustomIcon(
              icon: Icons.add_circle,
              color: AppColors.hippieBlue,
              size: IconSize.large,
            ),
            onPressed: () {
              var item = BookingModel(
                title: _titleController.text,
                subTitle: _subTitleController.text,
                rate: _rateController.text,
                releaseDay: _releaseDayController.text,
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                id: Uuid().v4(),
              );
              context.read<TodosBloc>().add(
                    AddTodoEvent(item: item),
                  );
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
