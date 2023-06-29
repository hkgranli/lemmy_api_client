// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Login _$$_LoginFromJson(Map<String, dynamic> json) => _$_Login(
      usernameOrEmail: json['username_or_email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_LoginToJson(_$_Login instance) => <String, dynamic>{
      'username_or_email': instance.usernameOrEmail,
      'password': instance.password,
    };

_$_Register _$$_RegisterFromJson(Map<String, dynamic> json) => _$_Register(
      username: json['username'] as String,
      email: json['email'] as String?,
      password: json['password'] as String,
      passwordVerify: json['password_verify'] as String,
      showNsfw: json['show_nsfw'] as bool,
      captchaUuid: json['captcha_uuid'] as String?,
      captchaAnswer: json['captcha_answer'] as String?,
      honeypot: json['honeypot'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$_RegisterToJson(_$_Register instance) {
  final val = <String, dynamic>{
    'username': instance.username,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  val['password'] = instance.password;
  val['password_verify'] = instance.passwordVerify;
  val['show_nsfw'] = instance.showNsfw;
  writeNotNull('captcha_uuid', instance.captchaUuid);
  writeNotNull('captcha_answer', instance.captchaAnswer);
  writeNotNull('honeypot', instance.honeypot);
  writeNotNull('answer', instance.answer);
  return val;
}

_$_GetCaptcha _$$_GetCaptchaFromJson(Map<String, dynamic> json) =>
    _$_GetCaptcha();

Map<String, dynamic> _$$_GetCaptchaToJson(_$_GetCaptcha instance) =>
    <String, dynamic>{};

_$_SaveUserSettings _$$_SaveUserSettingsFromJson(Map<String, dynamic> json) =>
    _$_SaveUserSettings(
      showNsfw: json['show_nsfw'] as bool?,
      theme: json['theme'] as String?,
      defaultSortType: sortTypeFromString(json['default_sort_type'] as String),
      defaultListingType:
          postListingTypeFromString(json['default_listing_type'] as String),
      lang: json['lang'] as String?,
      avatar: json['avatar'] as String?,
      banner: json['banner'] as String?,
      displayName: json['display_name'] as String?,
      email: json['email'] as String?,
      bio: json['bio'] as String?,
      matrixUserId: json['matrix_user_id'] as String?,
      showAvatars: json['show_avatars'] as bool?,
      showScores: json['show_scores'] as bool?,
      sendNotificationsToEmail: json['send_notifications_to_email'] as bool?,
      showReadPosts: json['show_read_posts'] as bool?,
      botAccount: json['bot_account'] as bool?,
      showBotAccounts: json['show_bot_accounts'] as bool?,
      showNewPostNotifs: json['show_new_post_notifs'] as bool?,
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_SaveUserSettingsToJson(_$_SaveUserSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('show_nsfw', instance.showNsfw);
  writeNotNull('theme', instance.theme);
  writeNotNull('default_sort_type', sortTypeToString(instance.defaultSortType));
  writeNotNull('default_listing_type',
      postListingTypeToString(instance.defaultListingType));
  writeNotNull('lang', instance.lang);
  writeNotNull('avatar', instance.avatar);
  writeNotNull('banner', instance.banner);
  writeNotNull('display_name', instance.displayName);
  writeNotNull('email', instance.email);
  writeNotNull('bio', instance.bio);
  writeNotNull('matrix_user_id', instance.matrixUserId);
  writeNotNull('show_avatars', instance.showAvatars);
  writeNotNull('show_scores', instance.showScores);
  writeNotNull(
      'send_notifications_to_email', instance.sendNotificationsToEmail);
  writeNotNull('show_read_posts', instance.showReadPosts);
  writeNotNull('bot_account', instance.botAccount);
  writeNotNull('show_bot_accounts', instance.showBotAccounts);
  writeNotNull('show_new_post_notifs', instance.showNewPostNotifs);
  val['auth'] = instance.auth;
  return val;
}

_$_ChangePassword _$$_ChangePasswordFromJson(Map<String, dynamic> json) =>
    _$_ChangePassword(
      newPassword: json['new_password'] as String,
      newPasswordVerify: json['new_password_verify'] as String,
      oldPassword: json['old_password'] as String,
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_ChangePasswordToJson(_$_ChangePassword instance) =>
    <String, dynamic>{
      'new_password': instance.newPassword,
      'new_password_verify': instance.newPasswordVerify,
      'old_password': instance.oldPassword,
      'auth': instance.auth,
    };

_$_GetPersonDetails _$$_GetPersonDetailsFromJson(Map<String, dynamic> json) =>
    _$_GetPersonDetails(
      personId: json['person_id'] as int?,
      username: json['username'] as String?,
      sort: json['sort'] == null
          ? null
          : SortType.fromJson(json['sort'] as String),
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      communityId: json['community_id'] as int?,
      savedOnly: json['saved_only'] as bool?,
      auth: json['auth'] as String?,
    );

Map<String, dynamic> _$$_GetPersonDetailsToJson(_$_GetPersonDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('person_id', instance.personId);
  writeNotNull('username', instance.username);
  writeNotNull('sort', instance.sort?.toJson());
  writeNotNull('page', instance.page);
  writeNotNull('limit', instance.limit);
  writeNotNull('community_id', instance.communityId);
  writeNotNull('saved_only', instance.savedOnly);
  writeNotNull('auth', instance.auth);
  return val;
}

_$_MarkAllAsRead _$$_MarkAllAsReadFromJson(Map<String, dynamic> json) =>
    _$_MarkAllAsRead(
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_MarkAllAsReadToJson(_$_MarkAllAsRead instance) =>
    <String, dynamic>{
      'auth': instance.auth,
    };

_$_AddAdmin _$$_AddAdminFromJson(Map<String, dynamic> json) => _$_AddAdmin(
      personId: json['person_id'] as int,
      added: json['added'] as bool,
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_AddAdminToJson(_$_AddAdmin instance) =>
    <String, dynamic>{
      'person_id': instance.personId,
      'added': instance.added,
      'auth': instance.auth,
    };

_$_BanPerson _$$_BanPersonFromJson(Map<String, dynamic> json) => _$_BanPerson(
      personId: json['person_id'] as int,
      ban: json['ban'] as bool,
      removeData: json['remove_data'] as bool?,
      reason: json['reason'] as String?,
      expires: json['expires'] as int?,
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_BanPersonToJson(_$_BanPerson instance) {
  final val = <String, dynamic>{
    'person_id': instance.personId,
    'ban': instance.ban,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('remove_data', instance.removeData);
  writeNotNull('reason', instance.reason);
  writeNotNull('expires', instance.expires);
  val['auth'] = instance.auth;
  return val;
}

_$_GetReplies _$$_GetRepliesFromJson(Map<String, dynamic> json) =>
    _$_GetReplies(
      sort: json['sort'] == null
          ? null
          : SortType.fromJson(json['sort'] as String),
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      unreadOnly: json['unread_only'] as bool?,
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_GetRepliesToJson(_$_GetReplies instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sort', instance.sort?.toJson());
  writeNotNull('page', instance.page);
  writeNotNull('limit', instance.limit);
  writeNotNull('unread_only', instance.unreadOnly);
  val['auth'] = instance.auth;
  return val;
}

_$_GetPersonMentions _$$_GetPersonMentionsFromJson(Map<String, dynamic> json) =>
    _$_GetPersonMentions(
      sort: json['sort'] == null
          ? null
          : SortType.fromJson(json['sort'] as String),
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      unreadOnly: json['unread_only'] as bool?,
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_GetPersonMentionsToJson(
    _$_GetPersonMentions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sort', instance.sort?.toJson());
  writeNotNull('page', instance.page);
  writeNotNull('limit', instance.limit);
  writeNotNull('unread_only', instance.unreadOnly);
  val['auth'] = instance.auth;
  return val;
}

_$_MarkPersonMentionAsRead _$$_MarkPersonMentionAsReadFromJson(
        Map<String, dynamic> json) =>
    _$_MarkPersonMentionAsRead(
      personMentionId: json['person_mention_id'] as int,
      read: json['read'] as bool,
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_MarkPersonMentionAsReadToJson(
        _$_MarkPersonMentionAsRead instance) =>
    <String, dynamic>{
      'person_mention_id': instance.personMentionId,
      'read': instance.read,
      'auth': instance.auth,
    };

_$_DeleteAccount _$$_DeleteAccountFromJson(Map<String, dynamic> json) =>
    _$_DeleteAccount(
      password: json['password'] as String,
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_DeleteAccountToJson(_$_DeleteAccount instance) =>
    <String, dynamic>{
      'password': instance.password,
      'auth': instance.auth,
    };

_$_PasswordReset _$$_PasswordResetFromJson(Map<String, dynamic> json) =>
    _$_PasswordReset(
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_PasswordResetToJson(_$_PasswordReset instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$_PasswordChange _$$_PasswordChangeFromJson(Map<String, dynamic> json) =>
    _$_PasswordChange(
      token: json['token'] as String,
      password: json['password'] as String,
      passwordVerify: json['password_verify'] as String,
    );

Map<String, dynamic> _$$_PasswordChangeToJson(_$_PasswordChange instance) =>
    <String, dynamic>{
      'token': instance.token,
      'password': instance.password,
      'password_verify': instance.passwordVerify,
    };

_$_CreatePrivateMessage _$$_CreatePrivateMessageFromJson(
        Map<String, dynamic> json) =>
    _$_CreatePrivateMessage(
      content: json['content'] as String,
      recipientId: json['recipient_id'] as int,
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_CreatePrivateMessageToJson(
        _$_CreatePrivateMessage instance) =>
    <String, dynamic>{
      'content': instance.content,
      'recipient_id': instance.recipientId,
      'auth': instance.auth,
    };

_$_EditPrivateMessage _$$_EditPrivateMessageFromJson(
        Map<String, dynamic> json) =>
    _$_EditPrivateMessage(
      privateMessageId: json['private_message_id'] as int,
      content: json['content'] as String,
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_EditPrivateMessageToJson(
        _$_EditPrivateMessage instance) =>
    <String, dynamic>{
      'private_message_id': instance.privateMessageId,
      'content': instance.content,
      'auth': instance.auth,
    };

_$_DeletePrivateMessage _$$_DeletePrivateMessageFromJson(
        Map<String, dynamic> json) =>
    _$_DeletePrivateMessage(
      privateMessageId: json['private_message_id'] as int,
      deleted: json['deleted'] as bool,
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_DeletePrivateMessageToJson(
        _$_DeletePrivateMessage instance) =>
    <String, dynamic>{
      'private_message_id': instance.privateMessageId,
      'deleted': instance.deleted,
      'auth': instance.auth,
    };

_$_MarkPrivateMessageAsRead _$$_MarkPrivateMessageAsReadFromJson(
        Map<String, dynamic> json) =>
    _$_MarkPrivateMessageAsRead(
      privateMessageId: json['private_message_id'] as int,
      read: json['read'] as bool,
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_MarkPrivateMessageAsReadToJson(
        _$_MarkPrivateMessageAsRead instance) =>
    <String, dynamic>{
      'private_message_id': instance.privateMessageId,
      'read': instance.read,
      'auth': instance.auth,
    };

_$_GetPrivateMessages _$$_GetPrivateMessagesFromJson(
        Map<String, dynamic> json) =>
    _$_GetPrivateMessages(
      unreadOnly: json['unread_only'] as bool?,
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_GetPrivateMessagesToJson(
    _$_GetPrivateMessages instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unread_only', instance.unreadOnly);
  writeNotNull('page', instance.page);
  writeNotNull('limit', instance.limit);
  val['auth'] = instance.auth;
  return val;
}

_$_BlockPerson _$$_BlockPersonFromJson(Map<String, dynamic> json) =>
    _$_BlockPerson(
      personId: json['person_id'] as int,
      block: json['block'] as bool,
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_BlockPersonToJson(_$_BlockPerson instance) =>
    <String, dynamic>{
      'person_id': instance.personId,
      'block': instance.block,
      'auth': instance.auth,
    };

_$_GetUnreadCount _$$_GetUnreadCountFromJson(Map<String, dynamic> json) =>
    _$_GetUnreadCount(
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_GetUnreadCountToJson(_$_GetUnreadCount instance) =>
    <String, dynamic>{
      'auth': instance.auth,
    };

_$_GetReportCount _$$_GetReportCountFromJson(Map<String, dynamic> json) =>
    _$_GetReportCount(
      communityId: json['community_id'] as int?,
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_GetReportCountToJson(_$_GetReportCount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('community_id', instance.communityId);
  val['auth'] = instance.auth;
  return val;
}

_$_GetBannedPersons _$$_GetBannedPersonsFromJson(Map<String, dynamic> json) =>
    _$_GetBannedPersons(
      auth: json['auth'] as String,
    );

Map<String, dynamic> _$$_GetBannedPersonsToJson(_$_GetBannedPersons instance) =>
    <String, dynamic>{
      'auth': instance.auth,
    };

_$_VerifyEmail _$$_VerifyEmailFromJson(Map<String, dynamic> json) =>
    _$_VerifyEmail(
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_VerifyEmailToJson(_$_VerifyEmail instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
