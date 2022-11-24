import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/mobcommonlib.dart';

void main() {
  const MethodChannel channel = MethodChannel('com.mob.mobcommonlib');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Mobcommonlib.platformVersion, '42');
  });
}
