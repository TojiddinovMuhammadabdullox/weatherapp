  import 'package:flutter/material.dart';

  void main() {
    runApp(MyWeatherApp());
  }

  class MyWeatherApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Weather App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Weather App'),
          ),
          body: WeatherScreen(),
        ),
      );
    }
  }

  class WeatherScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Container(
        decoration: const BoxDecoration(
          color: Colors.blue, // Setting background color to blue
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Today',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '20°C', // Replace with actual temperature data
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.wb_sunny,
                  size: 100,
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Humidity:',
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        '70%', // Sample weather detail, replace with actual data
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Pressure:',
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        '1013 hPa', // Sample weather detail, replace with actual data
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        'Wind:',
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        '10 mph', // Sample weather detail, replace with actual data
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Visibility:',
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        '5 miles', // Sample weather detail, replace with actual data
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                color: Colors.white, // Separate background color for ScrollView
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      WeatherCard(
                          day: 'Mon', temperature: '22°C', icon: Icons.wb_sunny),
                      WeatherCard(
                          day: 'Tue', temperature: '24°C', icon: Icons.wb_cloudy),
                      WeatherCard(
                          day: 'Wed', temperature: '20°C', icon: Icons.grain),
                      WeatherCard(
                          day: 'Thu', temperature: '18°C', icon: Icons.flash_on),
                      WeatherCard(
                          day: 'Fri', temperature: '21°C', icon: Icons.wb_sunny),
                      WeatherCard(
                          day: 'Sat', temperature: '23°C', icon: Icons.wb_sunny),
                      WeatherCard(
                          day: 'Sun', temperature: '25°C', icon: Icons.wb_sunny),
                      WeatherCard(
                          day: 'Mon', temperature: '22°C', icon: Icons.wb_sunny),
                      WeatherCard(
                          day: 'Tue', temperature: '24°C', icon: Icons.wb_cloudy),
                      WeatherCard(
                          day: 'Wed', temperature: '20°C', icon: Icons.grain),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }

  class WeatherCard extends StatelessWidget {
    final String day;
    final String temperature;
    final IconData icon;

    WeatherCard(
        {required this.day, required this.temperature, required this.icon});

    @override
    Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              day,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Icon(
              icon,
              size: 50,
              color: Colors.blue, // You can change the color if needed
            ),
            SizedBox(height: 10),
            Text(
              temperature,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      );
    }
  }
