# FlutterCryptoApp
The simple Flutter app for displaying the rate in the BNB network of token A to token B on a pancakeswap.
## Features
#### Basic
- [x] Display of current exchange rates
- [x] Screens: tokens swap, tokens list, exchange rate screen
- [x] Exchange rate is updated every 60 seconds
- [x] Supports tokens: USDC, BUSD, WBNB, USDT, BTCB, ETH, CAKE
- [x] State-management and DI implemented using `flutter_riverpod`
- [x] Implemented Navigation
- [x] Custom design
- [x] Localization - ru, eng
- [x] CI workflow
- [x] App icon added  ![40](https://user-images.githubusercontent.com/82782889/215292914-1bfbe5f5-0071-469f-bdc1-c8e314e4c2e8.png)


## Screenshots

<img width="859" alt="screens" src="https://user-images.githubusercontent.com/82782889/215299124-9aac6b96-334f-457d-becc-1fc52bd6a6f6.png">

## Video

https://user-images.githubusercontent.com/82782889/215530733-282ef8f0-e0f7-4eb2-8ea4-26da96f4d24a.mov

## Get Started
Generate file *.freezed.dart, you can use this command on terminal :

`flutter pub run build_runner build --delete-conflicting-outputs`

or 

`bash scripts/generate-all.sh`


## Packages Used

- `flutter_riverpod` for state management.
- `http` to work with Http client.
- `freezed` - code generator
- `web3dart` to interact with the Ethereum blockchain.
- `linter` - for code rules.
- more at `pubspec.yaml`
