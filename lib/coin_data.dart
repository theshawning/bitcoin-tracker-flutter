import 'package:http/http.dart' as http;
import 'dart:convert';

const String apiKey = 'E0457752-47C9-46BC-8B95-9CC603981F77';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  getCoinData() async {
    http.Response response = await http
        .get('https://rest.coinapi.io/v1/exchangerate/BTC/USD?apiKey=$apiKey');
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var rate = data['rate'];
      return rate;
    } else {
      print(response.statusCode);
    }
  }
}
