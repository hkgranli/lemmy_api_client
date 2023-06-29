import 'package:lemmy_api_client/v3.dart';

Future<void> main() async {
  // instantiate your lemmy instance with the host uri
  final lemmy = LemmyApiV3('enterprise.lemmy.ml');

  // call methods that are named after op codes from the lemmy docs
  final response =
      await lemmy.run(const Login(usernameOrEmail: 'asd', password: 'ads'));

  final messages = await lemmy
      .run(GetPrivateMessages(unreadOnly: true, auth: response.jwt!.raw));

  print(messages);
}
