import 'package:flight_time_flutter_application/components/main_app_bar.dart';
import 'package:flutter/material.dart';

class ReservationListPage extends StatelessWidget {
  const ReservationListPage({super.key});

  static const routeName = "/reservation_list";

  List<Widget> getFlightWidgets(int count) {
    List<Widget> returnList = [];

    for (int i = 1; i <= count; i++) {
      returnList.add(
        Card(
          child: ListTile(
            onTap: () {},
            leading: const Icon(Icons.flight),
            title: Text(
              "Flight $i",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("6/20/2024"),
                Text("Arrival: 2:00 PM"),
                Row(
                  children: [
                    Text("12:00 PM"),
                    SizedBox(width: 10),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text("2:00 PM"),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }

    return returnList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: "Reservations"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: getFlightWidgets(10),
        ),
      ),
    );
  }
}
