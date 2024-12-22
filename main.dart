import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kebab"),
        backgroundColor: Color.fromARGB(255, 0, 134, 171),
      ),
      body: Row(
        children: [
          // Left Column
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Kebab",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Kebab adalah hidangan populer yang berasal dari Timur Tengah. Hidangan ini terbuat dari daging yang dipanggang atau dipanggang pada tusuk sate, kemudian dipotong-potong dan disajikan dalam roti pita atau roti tortila. Kebab sangat digemari karena rasanya yang lezat dan cara penyajiannya yang praktis.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Color.fromARGB(255, 0, 134, 171)),
                      Icon(Icons.star, color: Color.fromARGB(255, 0, 134, 171)),
                      Icon(Icons.star, color: Color.fromARGB(255, 0, 134, 171)),
                      Icon(Icons.star, color: Color.fromARGB(255, 0, 134, 171)),
                      Icon(Icons.star_border, color: Color.fromARGB(255, 0, 134, 171)),
                      SizedBox(width: 8),
                      Text("170 Reviews", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInfoColumn(Icons.timer, "Prep", "25 min"),
                      _buildInfoColumn(Icons.kitchen, "Cook", "15 min"),
                      _buildInfoColumn(Icons.group, "Feeds", "4-6"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Right Image
          Expanded(
            flex: 4,
            child: Image.asset(
              'assets/kebab.jpg', 
             
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to create information columns
  static Column _buildInfoColumn(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, color: Color.fromARGB(255, 119, 0, 255)),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}