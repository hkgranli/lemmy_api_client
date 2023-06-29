// workaround functions for parsing SortType and PostListingType from/into json
// when used in a user settings context
// this is sadly due to lemmy's legacy decision

import '../enums.dart';

String? sortTypeToString([SortType? sortType]) => sortType?.value;

String? postListingTypeToString([PostListingType? postListingType]) =>
    postListingType?.value;

SortType sortTypeFromString(String type) =>
    SortType.values.firstWhere((element) => element.value == type);
PostListingType postListingTypeFromString(String type) =>
    PostListingType.values.firstWhere((element) => element.value == type);
