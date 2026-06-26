# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-06-25

### Added
- Initial public release of Luxo Requests — resident profile setup, service-request submission with photo attachment, and on-device request history via Hive.

### Changed
- Restructured the app from a single ~1,750-line `main.dart` into `models/`, `screens/`, `theme/`, and `data/` modules.
- Deduplicated the buildings list and the service list + icon map into `lib/data/app_data.dart`.
- Migrated deprecated `withOpacity` / Dropdown `value` to `withValues` / `initialValue`.

### Removed
- Unused `flutter_inappwebview` and `http` dependencies.

[1.0.0]: https://github.com/AmanyaPhillip/request_app/releases/tag/v1.0.0
