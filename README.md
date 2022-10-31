# 하이파이브 모바일 앱

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

Generated by the [Very Good CLI][very_good_cli_link] 🤖

하이파이브 모바일 앱..

---
## 디렉토리 구조

bloc 패턴을 중심으로 각 폴더의 역할을 설명한다.

```
├── assets
├── lib
│   ├── app
│   │   ├── view
│   │   │    ├── app.dart
│   │   └── app.dart
│   ├── enums
│   ├── l10n
│   ├── models
│   ├── pages
│   ├── utils
│   ├── widgets
│   ├── bootstrap.dart
│   ├── main_development.dart
│   ├── main_production.dart
│   ├── main_staging.dart
├── packages
└── test

```
---

## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# 시작 쉘스크립트
$ sh ./flutter_run.sh

# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart

# Freezed Build
$ flutter pub run build_runner build --delete-conflicting-outputs
```

_\*Hifive works on iOS, Android, Web, and Windows._

---

## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---

## Working with Translations 🌐

This project relies on [flutter_localizations][flutter_localizations_link] and follows the [official internationalization guide for Flutter][internationalization_link].

### Adding Strings

1. To add a new localizable string, open the `app_en.arb` file at `lib/l10n/arb/app_en.arb`.

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

2. Then add a new key/value and description

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    },
    "helloWorld": "Hello World",
    "@helloWorld": {
        "description": "Hello World Text"
    }
}
```

3. Use the new string

```dart
import 'package:hifive/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include the new locale.

```xml
    ...

<key>CFBundleLocalizations</key>
<array>
<string>en</string>
<string>es</string>
</array>

    ...
```

### Adding Translations

1. For each supported locale, add a new ARB file in `lib/l10n/arb`.

```
├── l10n
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_es.arb
```

2. Add the translated strings to each `.arb` file:

`app_en.arb`

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

`app_es.arb`

```arb
{
    "@@locale": "es",
    "counterAppBarTitle": "Contador",
    "@counterAppBarTitle": {
        "description": "Texto mostrado en la AppBar de la página del contador"
    }
}
```

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli

```
2022-HiFive-Mobile-App
├─ l10n.yaml
├─ lib
│  ├─ app
│  │  ├─ app.dart
│  │  ├─ bloc
│  │  │  ├─ app_bloc.dart
│  │  │  ├─ app_event.dart
│  │  │  └─ app_state.dart
│  │  ├─ routes
│  │  │  └─ routes.dart
│  │  └─ view
│  │     └─ app.dart
│  ├─ bootstrap.dart
│  ├─ config.dart
│  ├─ constants.dart
│  ├─ enums
│  │  ├─ app_status.dart
│  │  ├─ data_status.dart
│  │  ├─ filter_data_type.dart
│  │  └─ note_view_type.dart
│  ├─ l10n
│  │  ├─ arb
│  │  │  ├─ app_en.arb
│  │  │  └─ app_es.arb
│  │  └─ l10n.dart
│  ├─ main_development.dart
│  ├─ main_production.dart
│  ├─ main_staging.dart
│  ├─ models
│  │  ├─ app_response.dart
│  │  ├─ app_response.g.dart
│  │  ├─ exam_model.dart
│  │  ├─ exam_model.freezed.dart
│  │  ├─ exam_model.g.dart
│  │  ├─ note_model.dart
│  │  ├─ note_model.freezed.dart
│  │  ├─ note_model.g.dart
│  │  ├─ request
│  │  │  ├─ create_login_token.dart
│  │  │  ├─ create_login_token.freezed.dart
│  │  │  ├─ create_login_token.g.dart
│  │  │  ├─ create_note_request.dart
│  │  │  ├─ create_note_request.freezed.dart
│  │  │  ├─ create_note_request.g.dart
│  │  │  ├─ update_note_request.dart
│  │  │  ├─ update_note_request.freezed.dart
│  │  │  └─ update_note_request.g.dart
│  │  └─ user_model.dart
│  ├─ pages
│  │  ├─ chat
│  │  │  ├─ chat.dart
│  │  │  ├─ view
│  │  │  │  └─ open_chat_page.dart
│  │  │  └─ widget
│  │  ├─ exam
│  │  │  ├─ bloc
│  │  │  │  ├─ exam_bloc.dart
│  │  │  │  ├─ exam_bloc.freezed.dart
│  │  │  │  ├─ exam_event.dart
│  │  │  │  └─ exam_state.dart
│  │  │  ├─ cubit
│  │  │  │  ├─ exam_cubit.dart
│  │  │  │  ├─ exam_cubit.freezed.dart
│  │  │  │  └─ exam_state.dart
│  │  │  ├─ dio
│  │  │  │  ├─ app_interceptors.dart
│  │  │  │  ├─ constants.dart
│  │  │  │  └─ dio_client.dart
│  │  │  ├─ exam.dart
│  │  │  ├─ request
│  │  │  │  ├─ create_exam_request.dart
│  │  │  │  ├─ create_exam_request.freezed.dart
│  │  │  │  ├─ create_exam_request.g.dart
│  │  │  │  ├─ update_exam_request.dart
│  │  │  │  ├─ update_exam_request.freezed.dart
│  │  │  │  └─ update_exam_request.g.dart
│  │  │  ├─ view
│  │  │  │  ├─ exam_bloc_homepage.dart
│  │  │  │  └─ exam_bloc_item_page.dart
│  │  │  └─ widget
│  │  │     ├─ exam_app_bar.dart
│  │  │     └─ exam_list.dart
│  │  ├─ home
│  │  │  ├─ home.dart
│  │  │  ├─ view
│  │  │  │  └─ home_page.dart
│  │  │  └─ widget
│  │  │     ├─ avatar.dart
│  │  │     └─ widgets.dart
│  │  ├─ login
│  │  │  ├─ cubit
│  │  │  │  ├─ login_cubit.dart
│  │  │  │  └─ login_state.dart
│  │  │  ├─ login.dart
│  │  │  └─ view
│  │  │     ├─ login_form.dart
│  │  │     ├─ login_page.dart
│  │  │     └─ view.dart
│  │  ├─ main_page.dart
│  │  ├─ note
│  │  │  ├─ bloc
│  │  │  │  ├─ note_bloc.dart
│  │  │  │  ├─ note_bloc.freezed.dart
│  │  │  │  ├─ note_event.dart
│  │  │  │  └─ note_state.dart
│  │  │  ├─ note.dart
│  │  │  ├─ view
│  │  │  │  ├─ add_note_page.dart
│  │  │  │  └─ note_home_page.dart
│  │  │  └─ widget
│  │  │     ├─ note_app_bar.dart
│  │  │     ├─ note_grid.dart
│  │  │     ├─ note_list.dart
│  │  │     └─ widgets.dart
│  │  ├─ pages.dart
│  │  ├─ profile
│  │  │  ├─ profile.dart
│  │  │  ├─ view
│  │  │  │  └─ profile_page.dart
│  │  │  └─ widget
│  │  ├─ shorts
│  │  │  ├─ shorts.dart
│  │  │  ├─ view
│  │  │  │  └─ shorts_page.dart
│  │  │  └─ widget
│  │  ├─ sign_up
│  │  │  ├─ cubit
│  │  │  │  ├─ sign_up_cubit.dart
│  │  │  │  └─ sign_up_state.dart
│  │  │  ├─ sign_up.dart
│  │  │  └─ view
│  │  │     ├─ sign_up_form.dart
│  │  │     ├─ sign_up_page.dart
│  │  │     └─ view.dart
│  │  └─ social
│  │     ├─ social.dart
│  │     ├─ view
│  │     │  └─ social_page.dart
│  │     └─ widget
│  ├─ repositories
│  │  ├─ app_repository.dart
│  │  ├─ core
│  │  │  └─ endpoint.dart
│  │  ├─ exam_repository.dart
│  │  ├─ note
│  │  │  ├─ base_note_repository.dart
│  │  │  └─ note_repository.dart
│  │  └─ repositories.dart
│  ├─ theme.dart
│  ├─ util
│  │  ├─ colors.dart
│  │  ├─ dialogs.dart
│  │  ├─ dio_client
│  │  │  ├─ app_interceptors.dart
│  │  │  └─ dio_client.dart
│  │  ├─ formatting.dart
│  │  └─ util.dart
│  └─ widget
│     ├─ app_icon_button.dart
│     ├─ app_text_field.dart
│     ├─ blank_content.dart
│     └─ widgets.dart
├─ packages
│  ├─ cache
│  │  ├─ .gitignore
│  │  ├─ .idea
│  │  │  ├─ libraries
│  │  │  │  └─ Dart_SDK.xml
│  │  │  ├─ modules.xml
│  │  │  └─ workspace.xml
│  │  ├─ .metadata
│  │  ├─ CHANGELOG.md
│  │  ├─ LICENSE
│  │  ├─ README.md
│  │  ├─ analysis_options.yaml
│  │  ├─ cache.iml
│  │  ├─ lib
│  │  │  └─ cache.dart
│  │  ├─ pubspec.lock
│  │  ├─ pubspec.yaml
│  │  └─ test
│  │     └─ cache_test.dart
│  └─ form_inputs
│     ├─ .gitignore
│     ├─ .idea
│     │  ├─ libraries
│     │  │  └─ Dart_SDK.xml
│     │  ├─ modules.xml
│     │  └─ workspace.xml
│     ├─ .metadata
│     ├─ CHANGELOG.md
│     ├─ LICENSE
│     ├─ README.md
│     ├─ analysis_options.yaml
│     ├─ form_inputs.iml
│     ├─ lib
│     │  ├─ form_inputs.dart
│     │  └─ src
│     │     ├─ confirmed_password.dart
│     │     ├─ email.dart
│     │     ├─ password.dart
│     │     └─ user_id.dart
│     ├─ pubspec.lock
│     ├─ pubspec.yaml
│     └─ test
│        └─ form_inputs_test.dart
├─ pubspec.lock
├─ pubspec.yaml

```