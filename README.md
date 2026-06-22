# Luxo Requests

A Flutter application for automating service request submissions for **Luxo Place** residents. Residents set up their profile once, then submit service requests quickly — with the app handling form filling and portal submission on their behalf.

## Features

- Resident profile setup with persistent storage
- Submit and automate service requests
- Attach photos via the device image picker
- Embedded web view for interacting with the requests portal (`flutter_inappwebview`)
- Local data storage with **Hive** and `shared_preferences`
- HTTP integration for portal/API calls

## Tech Stack

| Area | Technology |
|---|---|
| Framework | [Flutter](https://flutter.dev/) / Dart |
| Local storage | [`hive`](https://pub.dev/packages/hive) / `hive_flutter`, `shared_preferences` |
| Web view | `flutter_inappwebview` |
| Media | `image_picker` |
| Networking | `http` |
| Files | `path_provider` |

Targets Android, iOS, web, Windows, macOS, and Linux.

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- A device, emulator, or Chrome (for web)

### Run

```bash
flutter pub get
flutter run
```

### Build a release

```bash
flutter build apk        # Android
flutter build web        # Web
```

## Related

For a lighter, simpler take on the same idea, see [`luxo_request_mi`](https://github.com/AmanyaPhillip/luxo_request_mi).

## License

See [LICENSE](LICENSE).
