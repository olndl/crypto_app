# FlutterCryptoApp
The simple Flutter app for displaying the rate in the BNB network of token A to token B on a pancacke swap.
## Features
#### Basic
- [x] Display of current exchange rates
- [x] Screens: tokens swap, tokens list, exchange rate screen
- [x] Exchange rate is updated every 60 seconds
- [x] Supports tokens: USDC, BUSD, WBNB, USDT, BTCB, ETH, CAKE
- [x] State-management and DI implemented using `flutter_riverpod`
- [x] Implemented Navigation
- [x] Custom design
- [x] Internationalization - ru, eng
- [x] App icon added  ![40](https://user-images.githubusercontent.com/82782889/215292914-1bfbe5f5-0071-469f-bdc1-c8e314e4c2e8.png)


## Screenshots
<p float="left">
<img src="https://github.com/olndl/crypto_app/blob/f/logic/screenshots/screens.png" height="400"/>
</p>

## Video


https://user-images.githubusercontent.com/82782889/215292828-eb918a75-582c-4be7-8a3a-de796909dbae.mov




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
