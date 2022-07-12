import 'package:uuid/uuid.dart';

class ViewBookingInfor {
    final String id;
  String? label;
  String? content;
  ViewBookingInfor( {
    required this.id,
    this.label,
    this.content,
  });
}

List<ViewBookingInfor> listViewBookingInforDemo = [
  ViewBookingInfor(
    id: Uuid().v4(), // tạo id độc nhất tự động

    label: 'Equipment Name',
    content: 'BSC 1 (Thermo)',
  ),
  ViewBookingInfor(
    id: Uuid().v4(), // tạo id độc nhất tự động

    label: 'Equipment ID',
    content: 'NSG-0001',
  ),

  ViewBookingInfor(
    id: Uuid().v4(), // tạo id độc nhất tự động

    label: 'Location',
    content: 'Level 1, Main Lab Space',
  ),
  
  ViewBookingInfor(
    id: Uuid().v4(), // tạo id độc nhất tự động

    label: 'Datetime',
    content: 'May 7 (Fri)1030 - 1200',
  ),
  
];
