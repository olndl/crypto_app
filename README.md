# FlutterCryptoApp
Simple Flutter app for displaying the rate in the BNB network of token A to token B on a pancacke swap.
## Features
#### Basic
- [x] Screens: tokens swap, tokens list, exchange rate screen
- [x] Exchange rate is updated every 60 seconds
- [X] State-management and DI implemented using `flutter_riverpod`
- [x] Two languages supported - ru, eng
- [x] App icon added
- [X] Implemented Navigation

## Screenshots
<p float="left">
<img src="https://github.com/olndl/crypto_app/blob/f/logic/screenshots/screens.png" height="400"/>
</p>

## Video
<img src="https://github.com/olndl/crypto_app/blob/f/logic/screenshots/video.gif" width="200" height="400"/>

## Get Started
Generate file *.freezed.dart, you can use this command on terminal :

`flutter pub run build_runner build --delete-conflicting-outputs`

or 

`bash scripts/generate-all.sh`


## Packages Used

- `flutter_riverpod` for state management.
- `http` to work with Http client.
- `freezed` - code generator
- `web3dart`vto interact with the Ethereum blockchain.
- `linter` - for code rules.
- more at `pubspec.yaml`
