import 'data.dart';
import 'package:http/http.dart' as http;

class DataService {
  static final String _baseUrl = 'https://faniafilla.my.id/db.php';

  Future getData() async {
    Uri urlData = Uri.parse(_baseUrl);
    final response = await http.get(urlData);
    if (response.statusCode == 200) {
      return DataFromJson(response.body.toString());
    } else {
      throw Exception('Gagal Memuat Data');
    }
  }
}
