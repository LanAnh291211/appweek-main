import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/values/strings.dart';
import 'package:nsg_biolabs/shared/widgets/widges.dart';

import '../../../data/model/infor.dart';
import '../../../data/model/view_booking_infor.dart';
import '../../../presentation/bloc/edit bloc/edit_bloc.dart';
import '../../../presentation/bloc/todo bloc/todo_bloc.dart';
import '../../../presentation/pages/booking/view_booking.dart';

// class ViewBookingItem extends StatelessWidget {
//   final String label;
//   final String content;

//   const ViewBookingItem({
//     super.key,
//     required this.label,
//     required this.content,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: CustomTextStyle.regular(
//             color: AppColors.corduroy,
//             fontSize: FontSize.veryLarge,
//           ),
//         ),
//         Text(
//           content,
//           style: CustomTextStyle.bold(
//             color: AppColors.black,
//             fontSize: FontSize.veryLarge,
//           ),
//         )
//       ],
//     );
//   }
// }
// class ViewBookingItem extends StatefulWidget {
//   final ViewBookingInfor todo;
//   final ;
//   const ViewBookingItem({
//     Key? key,
//     required this.todo,
//   }) : super(key: key);
//   @override
//   State<ViewBookingItem> createState() => _ViewBookingItemState();
// }

// class _ViewBookingItemState extends State<ViewBookingItem> {
//   late final TextEditingController _labelController;
//   late final TextEditingController _contentController;

//   @override
//   void initState() {
//     super.initState();
//     _labelController = TextEditingController(text: widget.todo.label);
//     _contentController = TextEditingController(text: widget.todo.content);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<EditBloc, EditState>(
//       builder: (context, state) {
//         return ScreenFrame(
//           appBar: CustomAppBar(),
//           children: [
//             AbsorbPointer(
//               absorbing: state is DisableEditState,
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     CustomTextField(
//                       hintText: AppString.enterTitle,
//                       controller: _labelController,
//                       hintStyle: CustomTextStyle.bold(color: AppColors.nobel, fontSize: FontSize.veryBig),
//                       haveOutlineBorder: false,
//                       style: CustomTextStyle.bold(fontSize: FontSize.veryBig),
//                     ),
//                     CustomTextField(
//                       hintText: AppString.enterContent,
//                       controller: _contentController,
//                       haveOutlineBorder: false,
//                       maxLine: null,
//                       style: CustomTextStyle.regular(),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//           bottomNavigationBar: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               IconButton(
//                 icon: CustomIcon(
//                   icon: state is DisableEditState ? Icons.delete_forever_outlined : null,
//                   color: Colors.red,
//                   size: IconSize.large,
//                 ),
//                 onPressed: () {
//                   context.read<TodosBloc>().add(
//                         DeleteTodoEvent(todo: widget.todo),
//                       );
//                   Navigator.pop(context);
//                 },
//               ),
//               IconButton(
//                   icon: CustomIcon(
//                     icon: state is DisableEditState ? Icons.edit : Icons.done,
//                     size: IconSize.large,
//                   ),
//                   onPressed: () {
//                     context.read<EditBloc>().add(PressEditEvent());
//                     if (state is EnableEditState) {
//                       context.read<TodosBloc>().add(
//                             UpdateTodoEvent(
//                                 todo: TodoModel(
//                               id: widget.todo.id,
//                               title: _titleController.text,
//                               content: _contentController.text,
//                               color: widget.todo.color,
//                             )),
//                           );
//                     }
//                   }),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

