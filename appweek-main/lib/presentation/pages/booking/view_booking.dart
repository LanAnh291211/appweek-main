import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nsg_biolabs/data/model/infor.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/values/strings.dart';

import '../../../shared/widgets/widges.dart';
import '../../bloc/edit bloc/edit_bloc.dart';
import '../../bloc/todo bloc/todo_bloc.dart';

class ViewBooking extends StatefulWidget {
  final BookingModel Item;

  ViewBooking({Key? key, required this.Item}) : super(key: key);

  @override
  State<ViewBooking> createState() => _ViewBookingState();
}

class _ViewBookingState extends State<ViewBooking> {
  late final TextEditingController _titleController;
  late final TextEditingController _subTitleController;
  late final TextEditingController _rateController;
  late final TextEditingController _releaseDatyController;
  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.Item.title);
    _subTitleController = TextEditingController(text: widget.Item.subTitle);
    _rateController = TextEditingController(text: widget.Item.rate);
    _releaseDatyController = TextEditingController(text: widget.Item.releaseDay);
  }

  Widget build(BuildContext context) {
    return BlocBuilder<EditBloc, EditState>(
      builder: (context, state) {
        return ScreenFrame(
          appBar: CustomAppBar(
            labelTitle: 'viewBooking',
            actionIcon: AppImages.icEdit,
            actionOnPressed: () {
              context.read<EditBloc>().add(PressEditEvent());
              if (state is EnableEditState) {
                context.read<TodosBloc>().add(
                      UpdateTodoEvent(
                          item: BookingModel(
                        id: widget.Item.id,
                        title: _titleController.text,
                        subTitle: _subTitleController.text,
                        releaseDay: _releaseDatyController.text,
                        rate: _rateController.text,
                        color: widget.Item.color,
                      )),
                    );
              }
            },
          ),
          children: [
            AbsorbPointer(
              absorbing: state is DisableEditState,
              child: Column(
                children: [
                  Expanded(
                    child: CustomTextField(
                      label: AppString.enterTitle,
                      controller: TextEditingController(),
                      haveOutlineBorder: false,
                      maxLine: null,
                    ),
                  ),
                  Expanded(
                    child: CustomTextField(
                      label: AppString.enterSubTitle,
                      controller: TextEditingController(),
                      haveOutlineBorder: false,
                      maxLine: null,
                    ),
                  ),
                  Expanded(
                    child: CustomTextField(
                      label: AppString.enterReleaseDay,
                      controller: TextEditingController(),
                      haveOutlineBorder: false,
                      maxLine: null,
                    ),
                  ),
                  Expanded(
                    child: CustomTextField(
                      label: AppString.enterRate,
                      controller: TextEditingController(),
                      haveOutlineBorder: false,
                      maxLine: null,
                    ),
                  ),
                ],
              ),
            )
          ],
          // body: ListView.builder(
          //   padding: CustomEdgeInsets.symmetric(
          //     horizontal: Space.spacing23,
          //     vertical: Space.spacing32,
          //   ),
          //   shrinkWrap: true,
          //   itemCount: listViewBookingInforDemo.length,
          //   itemBuilder: (BuildContext context, int index) => Container(
          //     margin: CustomEdgeInsets.only(bottom: Space.spacing15),
          //     child: ViewBookingItem(
          //       label: listViewBookingInforDemo[index].label!,
          //       content: listViewBookingInforDemo[index].content!,
          //     ),
          //   ),
          // ),
          bottomNavigationBar: CustomBottomNavigationBar(),
        );
      },
    );
  }
}
