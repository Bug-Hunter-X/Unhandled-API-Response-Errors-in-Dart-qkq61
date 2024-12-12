```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      if (jsonBody is List) {
        for (final item in jsonBody) {
          final name = item['name'];
          if (name != null) {
            print(name);
          } else {
            print('Missing name key in item: $item');
          }
        }
      } else {
        print('Unexpected response format: $jsonBody');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```