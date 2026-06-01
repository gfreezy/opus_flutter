import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:opus_flutter_platform_interface/opus_flutter_platform_interface.dart';

/// An implementation of [OpusFlutterPlatform] for macOS.
class OpusFlutterMacOS extends OpusFlutterPlatform {
  /// Registers the macOS implementation.
  static void registerWith() {
    OpusFlutterPlatform.instance = new OpusFlutterMacOS();
  }

  /// Opens the opus framework bundled with this plugin.
  Future<dynamic> load() async {
    final String executablePath = File(
      Platform.resolvedExecutable,
    ).resolveSymbolicLinksSync();
    final Directory contentsDirectory = File(executablePath).parent.parent;
    final String frameworkPath =
        '${contentsDirectory.path}/Frameworks/opus.framework/opus';

    if (File(frameworkPath).existsSync()) {
      return DynamicLibrary.open(frameworkPath);
    }

    return DynamicLibrary.process();
  }
}
