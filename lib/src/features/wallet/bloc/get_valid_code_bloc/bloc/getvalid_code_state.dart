part of 'getvalid_code_bloc.dart';

@immutable
sealed class GetvalidCodeState {}

final class GetvalidCodeInitial extends GetvalidCodeState {}
final class SuccessGetValidCode extends GetvalidCodeState{}
final class FailedGetValidCode extends GetvalidCodeState{}
