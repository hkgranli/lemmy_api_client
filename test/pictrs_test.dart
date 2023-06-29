import 'dart:io';

import 'package:lemmy_api_client/pictrs.dart';
import 'package:test/test.dart';

import 'v3/util.dart';

void main() {
  group('pictrs', () {
    final pictrs = PictrsApi(federation!);

    test('successful upload and delete', () async {
      final res = await pictrs.upload(
        filePath: 'test/test.png',
        auth: goodAuth,
      );

      try {
        const rs = PictrsUploadFile(deleteToken: '123', file: 'test.jpg');
        await pictrs.delete(rs);
      } on LemmyApiException catch (err) {
        expect(err.message, 'pictrs_wrong_delete_token');
      }

      await pictrs.delete(res.files[0]);
    });

    /*
    test('fails to delete with a wrong token', () async {
      try {
        const rs = PictrsUploadFile(deleteToken: '123', file: 'test.jpg');
        await pictrs.delete(rs);
      } on LemmyApiException catch (err) {
        expect(err.message, 'pictrs_wrong_delete_token');
      }
    });
    */

    /*
    test('fails to delete with a wrong token', () async {
        const rs = (deleteToken: '123', file: 'test.jpg');
        await pictrs.delete(rs);
    });
    */

    group('delete', () {
      test('fails to delete a not existing resource', () async {
        try {
          const rs = PictrsUploadFile(deleteToken: '123', file: 'qwe.jpg');
          await pictrs.delete(rs);
        } on LemmyApiException catch (err) {
          expect(err.message, 'pictrs_not_found');
        }
      });
    });
  });
}
