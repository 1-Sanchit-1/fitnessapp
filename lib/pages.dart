import 'package:fitness_01/info.dart';
import 'package:fitness_01/optionlist.dart';
import 'package:flutter/material.dart';

class Homepages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Gym Events",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 250,
                child: ViewBuilder(itemlist: gymCards),
              ),
              const Text(
                "Yoga Events",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 250,
                child: ViewBuilder(itemlist: yogaCards),
              ),
              const Text(
                "Meditation Events",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 250,
                child: ViewBuilder(itemlist: mediCards),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

buildCard() => Container(
      height: 40,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        gradient: LinearGradient(colors: [
          Colors.grey,
          Colors.grey.withOpacity(0.5),
          Colors.grey,
        ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Blah"),
                ElevatedButton(onPressed: () {}, child: Text("Join"))
              ],
            ),
          )
        ],
      ),
    );

class gympages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

class Eventspages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        // elevation: 2,
        // shape: RoundedRectangleBorder(
        // borderRadius: BorderRadius.circular(15),
        child: Column(
          children: [
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

class Yogapage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Card();
        });
  }
}

class Profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
            buildCards(),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

buildCards() => Container(
      width: 400,
      height: 200,
      color: Colors.brown,
    );
