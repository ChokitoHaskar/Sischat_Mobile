import 'package:flutter/material.dart';
import 'package:st_mobile_ui/authenticator.dart';
import 'package:st_mobile_ui/views/chat.dart';
import 'package:st_mobile_ui/views/dashboard.dart';
import 'package:st_mobile_ui/views/onlineUsers.dart';
import 'package:st_mobile_ui/views/profile.dart';

const String AuthView = '/auth';
const String DashboardView = '/dashboard';
const String ChatView = '/chat';
const String OnlineUsersView = '/onlenuser';
const String ProfilesView = '/profiles';

Map<String, WidgetBuilder> routes = {
  AuthView: (context) => Authentication(),
  DashboardView: (context) => DashboardPage(),
  ChatView: (context) => Chat(),
  OnlineUsersView: (context) => ListUsersOnline(),
  ProfilesView: (context) => Profile(),
};
