import 'dart:io';

import 'package:lemmy_api_client/v3.dart';
import 'package:test/test.dart';

//
final federation = Platform.environment['TEST_FEDERATION'];
final lemmy = LemmyApiV3(federation!);

/// checks if the LemmyApiQuery will throw and will have a correct i18n string set as a message
Future<void> lemmyThrows(LemmyApiQuery query) async {
  await expectLater(
    () => lemmy.run<dynamic>(query),
    throwsA(
      isA<LemmyApiException>(),
      //.having((e) => e.message,'lemmy error message',matches(RegExp(r'^([a-z]+_)*[a-z]+$')),),
    ),
  );
}

//const goodCommunityName = 'test2';
final goodCommunityName = Platform.environment['TEST_COMMUNITY']!;
const badCommunityName = '--';

const goodPersonId = 13709;
const badPersonId = -1;

const goodModPersonId = 8169;
const badModPersonId = -1;

int goodPostId = 417003;
const badPostId = -1;

//const goodUsername = '123test';
final goodUsername = Platform.environment['TEST_USER']!;
const badUsername = '--';

int goodCommunityId = 18040;
const badCommunityId = -1;

int goodMyCommentId = -1;
int badMyCommentId = -1;

int goodCommentId = 19966;
const badCommentId = -1;

final goodAuth = Platform.environment['TEST_JWT']!;
const badAuth = 'dsa';
