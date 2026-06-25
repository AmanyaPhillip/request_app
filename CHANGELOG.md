# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed
- Restructured the app from a single ~1,750-line `main.dart` into `models/`, `screens/`, `theme/`, and `data/` modules.
- Deduplicated the buildings list (previously copied across three screens) and the service list + icon map (previously copied across two) into `lib/data/app_data.dart`.
