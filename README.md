# flutter_starter_mmm

## This is a flutter multi-module template

- State management is done with Bloc/Cubit
- getIt and Injectable is used for dependency injection 
- Dio is used for API calls
- Intl(localization) and asset generator is used 
- AutoRoute is used for navigation 

## Modules
- common - Contains common class which can be used in any layer
- data - Contains repositories which exposed data from remote/local data source
- domain - An abstraction b/w feature and data layer. It exposes use-cases.
- network - Responsible for network operations exposes Remote data sources
- design - Contain reusable Ui components which can used inside feature module. Additionally design module also contains localization and assets configuration.
- features - Contains app features 

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
