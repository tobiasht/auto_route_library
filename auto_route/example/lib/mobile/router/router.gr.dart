// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../screens/books/book_details_page.dart' as _i7;
import '../screens/books/book_list_page.dart' as _i6;
import '../screens/empty/empty_router_page.dart' as _i4;
import '../screens/home_page.dart' as _i1;
import '../screens/login_page.dart' as _i3;
import '../screens/profile/my_books_page.dart' as _i10;
import '../screens/profile/profile_page.dart' as _i9;
import '../screens/settings.dart' as _i5;
import '../screens/user-data/data_collector.dart' as _i15;
import '../screens/user-data/single_field_page.dart' as _i11;
import '../screens/user-data/user_data_collector_page.dart' as _i2;
import '../screens/user-data/user_data_page.dart' as _i12;
import 'router.dart' as _i8;

class RootRouter extends _i13.RootStackRouter {
  RootRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i13.MaterialPageX<String>(
          routeData: routeData, child: const _i1.HomePage());
    },
    UserDataCollectorRoute.name: (routeData) {
      final args = routeData.argsAs<UserDataCollectorRouteArgs>(
          orElse: () => const UserDataCollectorRouteArgs());
      return _i13.MaterialPageX<_i15.UserData>(
          routeData: routeData,
          child: _i2.UserDataCollectorPage(
              key: args.key, onResult: args.onResult));
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.LoginPage(
              key: args.key,
              onLoginResult: args.onLoginResult,
              showBackButton: args.showBackButton));
    },
    BooksTab.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    ProfileTab.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    SettingsTab.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<SettingsTabArgs>(
          orElse: () => SettingsTabArgs(
              tab: pathParams.getString('tab'),
              query: queryParams.getString('query', 'none')));
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.SettingsPage(
              key: args.key, tab: args.tab, query: args.query));
    },
    BookListRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.BookListScreen());
    },
    BookDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BookDetailsRouteArgs>(
          orElse: () => BookDetailsRouteArgs(id: pathParams.getInt('id', -1)));
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.BookDetailsPage(id: args.id),
          fullscreenDialog: true);
    },
    InheritedParamRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<InheritedParamRouteArgs>(
          orElse: () => InheritedParamRouteArgs(
              nonPathParam: queryParams.getString('nonPathParam', 'defa')));
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.InheritedParamScreen(
              key: args.key,
              id: pathParams.getString('id'),
              nonPathParam: args.nonPathParam));
    },
    ProfileRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.ProfilePage());
    },
    MyBooksRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<MyBooksRouteArgs>(
          orElse: () => MyBooksRouteArgs(
              filter: queryParams.optString('filter', 'none')));
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.MyBooksPage(key: args.key, filter: args.filter));
    },
    NameFieldRoute.name: (routeData) {
      final args = routeData.argsAs<NameFieldRouteArgs>(
          orElse: () => const NameFieldRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.SingleFieldPage(
              key: args.key,
              message: args.message,
              willPopMessage: args.willPopMessage,
              onNext: args.onNext));
    },
    FavoriteBookFieldRoute.name: (routeData) {
      final args = routeData.argsAs<FavoriteBookFieldRouteArgs>(
          orElse: () => const FavoriteBookFieldRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.SingleFieldPage(
              key: args.key,
              message: args.message,
              willPopMessage: args.willPopMessage,
              onNext: args.onNext));
    },
    UserDataRoute.name: (routeData) {
      final args = routeData.argsAs<UserDataRouteArgs>(
          orElse: () => const UserDataRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.UserDataPage(key: args.key, onResult: args.onResult));
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(HomeRoute.name, path: '/', children: [
          _i13.RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'books',
              fullMatch: true),
          _i13.RouteConfig(BooksTab.name,
              path: 'books',
              parent: HomeRoute.name,
              children: [
                _i13.RouteConfig(BookListRoute.name,
                    path: '', parent: BooksTab.name),
                _i13.RouteConfig(BookDetailsRoute.name,
                    path: ':id',
                    parent: BooksTab.name,
                    children: [
                      _i13.RouteConfig(InheritedParamRoute.name,
                          path: 'inherited-param-screen',
                          parent: BookDetailsRoute.name)
                    ])
              ]),
          _i13.RouteConfig(ProfileTab.name,
              path: 'profile',
              parent: HomeRoute.name,
              children: [
                _i13.RouteConfig(ProfileRoute.name,
                    path: '', parent: ProfileTab.name),
                _i13.RouteConfig(MyBooksRoute.name,
                    path: 'my-books', parent: ProfileTab.name)
              ]),
          _i13.RouteConfig(SettingsTab.name,
              path: 'settings/:tab', parent: HomeRoute.name)
        ]),
        _i13.RouteConfig(UserDataCollectorRoute.name,
            path: '/user-data',
            children: [
              _i13.RouteConfig(NameFieldRoute.name,
                  path: 'name', parent: UserDataCollectorRoute.name),
              _i13.RouteConfig(FavoriteBookFieldRoute.name,
                  path: 'favorite-book', parent: UserDataCollectorRoute.name),
              _i13.RouteConfig(UserDataRoute.name,
                  path: 'results', parent: UserDataCollectorRoute.name)
            ]),
        _i13.RouteConfig(LoginRoute.name, path: '/login'),
        _i13.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.UserDataCollectorPage]
class UserDataCollectorRoute
    extends _i13.PageRouteInfo<UserDataCollectorRouteArgs> {
  UserDataCollectorRoute(
      {_i14.Key? key,
      dynamic Function(_i15.UserData)? onResult,
      List<_i13.PageRouteInfo>? children})
      : super(UserDataCollectorRoute.name,
            path: '/user-data',
            args: UserDataCollectorRouteArgs(key: key, onResult: onResult),
            initialChildren: children);

  static const String name = 'UserDataCollectorRoute';
}

class UserDataCollectorRouteArgs {
  const UserDataCollectorRouteArgs({this.key, this.onResult});

  final _i14.Key? key;

  final dynamic Function(_i15.UserData)? onResult;

  @override
  String toString() {
    return 'UserDataCollectorRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i13.PageRouteInfo<LoginRouteArgs> {
  LoginRoute(
      {_i14.Key? key,
      void Function(bool)? onLoginResult,
      bool showBackButton = true})
      : super(LoginRoute.name,
            path: '/login',
            args: LoginRouteArgs(
                key: key,
                onLoginResult: onLoginResult,
                showBackButton: showBackButton));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs(
      {this.key, this.onLoginResult, this.showBackButton = true});

  final _i14.Key? key;

  final void Function(bool)? onLoginResult;

  final bool showBackButton;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLoginResult: $onLoginResult, showBackButton: $showBackButton}';
  }
}

/// generated route for
/// [_i4.EmptyRouterPage]
class BooksTab extends _i13.PageRouteInfo<void> {
  const BooksTab({List<_i13.PageRouteInfo>? children})
      : super(BooksTab.name, path: 'books', initialChildren: children);

  static const String name = 'BooksTab';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class ProfileTab extends _i13.PageRouteInfo<void> {
  const ProfileTab({List<_i13.PageRouteInfo>? children})
      : super(ProfileTab.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileTab';
}

/// generated route for
/// [_i5.SettingsPage]
class SettingsTab extends _i13.PageRouteInfo<SettingsTabArgs> {
  SettingsTab({_i14.Key? key, required String tab, String query = 'none'})
      : super(SettingsTab.name,
            path: 'settings/:tab',
            args: SettingsTabArgs(key: key, tab: tab, query: query),
            rawPathParams: {'tab': tab},
            rawQueryParams: {'query': query});

  static const String name = 'SettingsTab';
}

class SettingsTabArgs {
  const SettingsTabArgs({this.key, required this.tab, this.query = 'none'});

  final _i14.Key? key;

  final String tab;

  final String query;

  @override
  String toString() {
    return 'SettingsTabArgs{key: $key, tab: $tab, query: $query}';
  }
}

/// generated route for
/// [_i6.BookListScreen]
class BookListRoute extends _i13.PageRouteInfo<void> {
  const BookListRoute() : super(BookListRoute.name, path: '');

  static const String name = 'BookListRoute';
}

/// generated route for
/// [_i7.BookDetailsPage]
class BookDetailsRoute extends _i13.PageRouteInfo<BookDetailsRouteArgs> {
  BookDetailsRoute({int id = -1, List<_i13.PageRouteInfo>? children})
      : super(BookDetailsRoute.name,
            path: ':id',
            args: BookDetailsRouteArgs(id: id),
            rawPathParams: {'id': id},
            initialChildren: children);

  static const String name = 'BookDetailsRoute';
}

class BookDetailsRouteArgs {
  const BookDetailsRouteArgs({this.id = -1});

  final int id;

  @override
  String toString() {
    return 'BookDetailsRouteArgs{id: $id}';
  }
}

/// generated route for
/// [_i8.InheritedParamScreen]
class InheritedParamRoute extends _i13.PageRouteInfo<InheritedParamRouteArgs> {
  InheritedParamRoute({_i14.Key? key, String nonPathParam = 'defa'})
      : super(InheritedParamRoute.name,
            path: 'inherited-param-screen',
            args: InheritedParamRouteArgs(key: key, nonPathParam: nonPathParam),
            rawQueryParams: {'nonPathParam': nonPathParam});

  static const String name = 'InheritedParamRoute';
}

class InheritedParamRouteArgs {
  const InheritedParamRouteArgs({this.key, this.nonPathParam = 'defa'});

  final _i14.Key? key;

  final String nonPathParam;

  @override
  String toString() {
    return 'InheritedParamRouteArgs{key: $key, nonPathParam: $nonPathParam}';
  }
}

/// generated route for
/// [_i9.ProfilePage]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i10.MyBooksPage]
class MyBooksRoute extends _i13.PageRouteInfo<MyBooksRouteArgs> {
  MyBooksRoute({_i14.Key? key, String? filter = 'none'})
      : super(MyBooksRoute.name,
            path: 'my-books',
            args: MyBooksRouteArgs(key: key, filter: filter),
            rawQueryParams: {'filter': filter});

  static const String name = 'MyBooksRoute';
}

class MyBooksRouteArgs {
  const MyBooksRouteArgs({this.key, this.filter = 'none'});

  final _i14.Key? key;

  final String? filter;

  @override
  String toString() {
    return 'MyBooksRouteArgs{key: $key, filter: $filter}';
  }
}

/// generated route for
/// [_i11.SingleFieldPage]
class NameFieldRoute extends _i13.PageRouteInfo<NameFieldRouteArgs> {
  NameFieldRoute(
      {_i14.Key? key,
      String message = '',
      String willPopMessage = '',
      void Function(String)? onNext})
      : super(NameFieldRoute.name,
            path: 'name',
            args: NameFieldRouteArgs(
                key: key,
                message: message,
                willPopMessage: willPopMessage,
                onNext: onNext));

  static const String name = 'NameFieldRoute';
}

class NameFieldRouteArgs {
  const NameFieldRouteArgs(
      {this.key, this.message = '', this.willPopMessage = '', this.onNext});

  final _i14.Key? key;

  final String message;

  final String willPopMessage;

  final void Function(String)? onNext;

  @override
  String toString() {
    return 'NameFieldRouteArgs{key: $key, message: $message, willPopMessage: $willPopMessage, onNext: $onNext}';
  }
}

/// generated route for
/// [_i11.SingleFieldPage]
class FavoriteBookFieldRoute
    extends _i13.PageRouteInfo<FavoriteBookFieldRouteArgs> {
  FavoriteBookFieldRoute(
      {_i14.Key? key,
      String message = '',
      String willPopMessage = '',
      void Function(String)? onNext})
      : super(FavoriteBookFieldRoute.name,
            path: 'favorite-book',
            args: FavoriteBookFieldRouteArgs(
                key: key,
                message: message,
                willPopMessage: willPopMessage,
                onNext: onNext));

  static const String name = 'FavoriteBookFieldRoute';
}

class FavoriteBookFieldRouteArgs {
  const FavoriteBookFieldRouteArgs(
      {this.key, this.message = '', this.willPopMessage = '', this.onNext});

  final _i14.Key? key;

  final String message;

  final String willPopMessage;

  final void Function(String)? onNext;

  @override
  String toString() {
    return 'FavoriteBookFieldRouteArgs{key: $key, message: $message, willPopMessage: $willPopMessage, onNext: $onNext}';
  }
}

/// generated route for
/// [_i12.UserDataPage]
class UserDataRoute extends _i13.PageRouteInfo<UserDataRouteArgs> {
  UserDataRoute({_i14.Key? key, dynamic Function(_i15.UserData)? onResult})
      : super(UserDataRoute.name,
            path: 'results',
            args: UserDataRouteArgs(key: key, onResult: onResult));

  static const String name = 'UserDataRoute';
}

class UserDataRouteArgs {
  const UserDataRouteArgs({this.key, this.onResult});

  final _i14.Key? key;

  final dynamic Function(_i15.UserData)? onResult;

  @override
  String toString() {
    return 'UserDataRouteArgs{key: $key, onResult: $onResult}';
  }
}
