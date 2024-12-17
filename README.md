# flutter_starter_mmm

## This a flutter multi-module template

- State management is done with Bloc/Cubit
- getIt and Injectable is used for dependency injection 
- Dio is used for API calls
- Intl(localization) and asset generator is used 
- AutoRoute is used for navigation 

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Clean workspace
flutter clean

## fetch dependencies
flutter pub get

## For generating localization files
flutter gen-l10n --arb-dir lib/localization

## For code generation
flutter pub run build_runner build --delete-conflicting-outputs

## For creating apk
flutter build apk --flavor dev -t lib/main.dart

## For creating app bundle
flutter build appbundle --flavor dev -t lib/main.dart
