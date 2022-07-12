import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/app_colors.dart';
import 'package:uuid/uuid.dart';

class BookingModel {
  final String id;

  Color? color;
  String? title;
  String? subTitle;
  String? releaseDay;
  String? rate;
  BookingModel({
    required this.color,
    required this.id,
    this.title = '',
    this.subTitle = '',
    required this.releaseDay,
    required this.rate,
  });
}

List<BookingModel> todoListDemo = [
  BookingModel(
    id: Uuid().v4(), // tạo id độc nhất tự động

    color: AppColors.carouselPink,
    title: 'BSC 1 (Thermo)',
    subTitle: 'Level 1, Main Lab Space',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
  BookingModel(
    id: Uuid().v4(), // tạo id độc nhất tự động

    color: AppColors.lavender,
    title: 'Meeting Room 2',
    subTitle: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
  BookingModel(
    id: Uuid().v4(), // tạo id độc nhất tự động

    color: AppColors.carouselPink,
    title: 'Meeting Room 2',
    subTitle: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
  BookingModel(
    id: Uuid().v4(), // tạo id độc nhất tự động

    color: AppColors.columbiaBlue,
    title: 'Meeting Room 2',
    subTitle: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
  BookingModel(
    id: Uuid().v4(), // tạo id độc nhất tự động

    color: AppColors.carouselPink,
    title: 'Meeting Room 2',
    subTitle: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
  BookingModel(
    id: Uuid().v4(), // tạo id độc nhất tự động

    color: AppColors.shalimar,
    title: 'Meeting Room 2',
    subTitle: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
];
