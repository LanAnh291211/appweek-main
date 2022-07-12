// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nsg_biolabs/presentation/pages/pages.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/widgets/widges.dart';

import '../../../data/model/infor.dart';
import '../../../shared/values/strings.dart';
import '../../bloc/todo bloc/todo_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      appBar: CustomAppBar(
        labelTitle: "appName",
        // titleWidget: Container(
        //   color: Colors.amber,
        //   width: 12,
        //   height: 12,
        // ),
        haveBackButton: false,
      ),
      children: [
        Container(
          margin: CustomEdgeInsets.only(bottom: Space.spacing22),
          child: Text(
            "myUpcomingBookings",
            style: CustomTextStyle.bold(
              color: AppColors.corduroy,
              fontSize: FontSize.medium,
            ),
          ),
        ),
        _listviewItem(),

        // ConstrainedBox(
        //   constraints: BoxConstraints(),
        //   child: SingleChildScrollView(
        //     scrollDirection: Axis.vertical,

        //     child: Column(
        //       children: List.generate(inforListDemo.length, (index) => _item(inforListDemo[index])),
        //     ),
        //   ),
        // ),
      ],
      floatingActionButton: CustomFloatingActionButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BookingPage()))),
      bottomNavigationBar: CustomBottomNavigationBar(),
    ); //
  }

  Widget _listviewItem() {
    return BlocBuilder<TodosBloc, TodoState>(
      builder: (context, state) {
        if (state is TodoLoadingState) {
          return const CircularProgressIndicator();
        }
        if (state is TodoLoadedState) {
          return Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: state.itemList.length,
              itemBuilder: (BuildContext context, int index) => BookingItem(info: state.itemList[index]),
            ),
          );
        }
        return const Text(AppString.error);
      },
    );
  }
}
