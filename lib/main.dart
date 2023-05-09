import 'package:flutter/material.dart';
import 'package:fullremotefactory/mobile_layout.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

// home page with layout builder
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.height;
    double screenHeight = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [ColorsScheme.blueGradient, Colors.white],
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 1000) {
              return  const MobileMayout() ;
            } else {
              return SingleChildScrollView(
                child: Container(
                  color: ColorsScheme.blue,
                  margin: const EdgeInsets.only(
                    top: 50,
                    left: 80,
                    right: 80,
                  ),
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      // first row
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: screenWidth * 0.56,
                              height: screenHeight * 0.5,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Drillight widget
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.transparent,
                                      border: Border.all(
                                        color: Colors.white.withOpacity(0.1),
                                        width: 2,
                                      ),
                                    ),
                                    padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 10,
                                        right: 10,
                                        bottom: 10),
                                    height: screenHeight * 0.05,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // logo  of the team

                                        const CircleAvatar(
                                          radius: 25,
                                          backgroundImage: AssetImage(
                                            'assets/images/286.jpg',
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        // team name and text
                                        Container(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ScalableText(
                                                text: 'DRILLIGHT',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1.8,
                                                ),
                                              ),
                                              ScalableText(
                                                text:
                                                    'La performance De vos joueurs',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  // dribble image
                                  Container(
                                    height: screenHeight * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: Colors.white.withOpacity(0.1),
                                        width: 2,
                                      ),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/images/dribble2.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          // second column for score and performance
                          Container(
                            width: screenWidth * 0.4,
                            height: screenHeight * 0.5,
                            child: Column(
                              children: [
                                // score widget
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: Colors.white.withOpacity(0.1),
                                      width: 2,
                                    ),
                                  ),
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, right: 10, bottom: 10),
                                  height: screenHeight * 0.05,
                                  child: Row(
                                    children: [
                                      // logo  of the team
                                      // circular image using container and decoration
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                            color:
                                                Colors.white.withOpacity(0.2),
                                            width: 1,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.manage_accounts_outlined,
                                          color: Colors.white.withOpacity(0.2),
                                          size: 30.0,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          contentPadding: EdgeInsets.zero,
                                          title: const Text(
                                            'SCORE',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          subtitle: Text(
                                            '25',
                                            style: TextStyle(
                                              color: ColorsScheme.blueGradient,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 30,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            // three container with widhth and height 10 and border raduis from topleft and bottom right
                                            Container(
                                              width: screenWidth * 0.03,
                                              height: 8,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(100),
                                                  bottomRight:
                                                      Radius.circular(100),
                                                ),
                                                color: ColorsScheme.pink,
                                                shape: BoxShape.rectangle,
                                              ),
                                            ),
                                            Container(
                                              width: screenWidth * 0.03,
                                              height: 8,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(100),
                                                  bottomRight:
                                                      Radius.circular(100),
                                                ),
                                                color: ColorsScheme.pink
                                                    .withOpacity(0.1),
                                                shape: BoxShape.rectangle,
                                              ),
                                            ),
                                            Container(
                                              width: screenWidth * 0.03,
                                              height: 8,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(100),
                                                  bottomRight:
                                                      Radius.circular(100),
                                                ),
                                                color: ColorsScheme.pink
                                                    .withOpacity(0.1),
                                                shape: BoxShape.rectangle,
                                              ),
                                            ),
                                            Container(
                                              width: screenWidth * 0.03,
                                              height: 8,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(100),
                                                  bottomRight:
                                                      Radius.circular(100),
                                                ),
                                                color: ColorsScheme.pink
                                                    .withOpacity(0.1),
                                                shape: BoxShape.rectangle,
                                              ),
                                            ),
                                            Container(
                                              width: screenWidth * 0.03,
                                              height: 8,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(100),
                                                  bottomRight:
                                                      Radius.circular(100),
                                                ),
                                                color: ColorsScheme.pink
                                                    .withOpacity(0.1),
                                                shape: BoxShape.rectangle,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      //! team name and text
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // performance widget
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: ColorsScheme.performance,
                                  ),
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, right: 10, bottom: 10),
                                  height: screenHeight * 0.03,
                                  width: screenWidth * 0.4,
                                  child: const Text(
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    'PERFORMANCE',
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // dribble image
                                Expanded(
                                    child: GridView.count(
                                  primary: true,
                                  childAspectRatio: 0.88,
                                  padding: const EdgeInsets.all(20),
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  crossAxisCount: 2,
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: ColorsScheme.performance,
                                      ),
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          /// football-practice.json
                                          Lottie.asset(
                                            'assets/football-practice.json',
                                            width: 80,
                                            height: 50,
                                          ),
                                          const Text(
                                            "Pied",
                                            style: TextStyle(
                                                color: Colors.white38),
                                          ),
                                          const Text(
                                            "25",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: ColorsScheme.performance,
                                      ),
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Lottie.asset(
                                            'assets/football-or-soccer-juggling.json',
                                            width: 80,
                                            height: 50,
                                          ),
                                          const Text(
                                            "Genoux",
                                            style: TextStyle(
                                                color: Colors.white38),
                                          ),
                                          const Text(
                                            "05",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: ColorsScheme.performance,
                                      ),
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Lottie.asset(
                                            'assets/19901-football.json',
                                            width: 80,
                                            height: 50,
                                          ),
                                          const Text(
                                            "Tete",
                                            style: TextStyle(
                                                color: Colors.white38),
                                          ),
                                          const Text(
                                            "10",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: ColorsScheme.performance,
                                      ),
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Lottie.asset(
                                            'assets/run.json',
                                            width: 80,
                                            height: 50,
                                          ),
                                          const Text(
                                            "Vitesse",
                                            style: TextStyle(
                                                color: Colors.white38),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              // three container with widhth and height 10 and border raduis from topleft and bottom right
                                              Container(
                                                width: screenWidth * 0.03,
                                                height: 8,
                                                decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(100),
                                                    bottomRight:
                                                        Radius.circular(100),
                                                  ),
                                                  color: Colors.white,
                                                  shape: BoxShape.rectangle,
                                                ),
                                              ),
                                              Container(
                                                width: screenWidth * 0.03,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(100),
                                                    bottomRight:
                                                        Radius.circular(100),
                                                  ),
                                                  color: Colors.white
                                                      .withOpacity(0.1),
                                                  shape: BoxShape.rectangle,
                                                ),
                                              ),
                                              Container(
                                                width: screenWidth * 0.03,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(100),
                                                    bottomRight:
                                                        Radius.circular(100),
                                                  ),
                                                  color: Colors.white
                                                      .withOpacity(0.1),
                                                  shape: BoxShape.rectangle,
                                                ),
                                              ),
                                              Container(
                                                width: screenWidth * 0.03,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(100),
                                                    bottomRight:
                                                        Radius.circular(100),
                                                  ),
                                                  color: Colors.white
                                                      .withOpacity(0.1),
                                                  shape: BoxShape.rectangle,
                                                ),
                                              ),
                                              Container(
                                                width: screenWidth * 0.03,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(100),
                                                    bottomRight:
                                                        Radius.circular(100),
                                                  ),
                                                  color: Colors.white
                                                      .withOpacity(0.1),
                                                  shape: BoxShape.rectangle,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // second row
                      Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: ColorsScheme.performance,
                        ),
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: const Text(
                                  'RANKING',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  '65%',
                                  style: TextStyle(
                                    color: ColorsScheme.pink,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                            // create a custom percent indicator
                            Container(
                              width:
                              MediaQuery.of(context).size.width * 0.6,
                              child: Stack(
                                children: [
                                  Container(

                                    height: 10,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        bottomRight: Radius.circular(100),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.topRight,
                                        colors: [
                                          ColorsScheme.blueGradient,
                                          ColorsScheme.pink,
                                          ColorsScheme.balck,
                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

// color class
class ColorsScheme {
  static Color blue = const Color(0xFF0D0F1E);
  static Color blueGradient = const Color(0xFF8ED1FC);
  static Color balck = const Color(0xFF1E88E5);
  static Color pink = const Color(0xFFF4B3CB);
  static Color performance = const Color(0xFF1A1939);
}

class DiamondShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 10,
      child: CustomPaint(
        painter: DiamondPainter(),
      ),
    );
  }
}

class DiamondPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = ColorsScheme.pink
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(size.width / 5, 2)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(0, size.height / 3)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
// create a text widget that decrease font size when the text is too long

class ScalableText extends StatelessWidget {
  final String text;
  final TextStyle style;

  ScalableText({required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}

class CustomPercentIndicator extends StatelessWidget {
  final double percent;
  final List<Color> colors;
  final List<double> widths;

  CustomPercentIndicator({
    required this.percent,
    required this.colors,
    required this.widths,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 20,
      child: CustomPaint(
        painter: _ProgressPainter(
          percent: percent,
          colors: colors,
          widths: widths,
        ),
      ),
    );
  }
}

class _ProgressPainter extends CustomPainter {
  final double percent;
  final List<Color> colors;
  final List<double> widths;

  _ProgressPainter({
    required this.percent,
    required this.colors,
    required this.widths,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = size.height;

    double totalWidth = 0;
    List<double> stops = [0];
    List<Color> gradientColors = [];

    for (int i = 0; i < colors.length; i++) {
      double width = widths[i];
      double value = width / size.width;
      totalWidth += width;
      stops.add(totalWidth / size.width);
      gradientColors.add(colors[i]);

      Path path = Path()
        ..moveTo(0, size.height / 2)
        ..lineTo(width, size.height / 2);

      paint.shader = LinearGradient(
        colors: gradientColors,
        stops: stops,
      ).createShader(Rect.fromLTWH(0, 0, totalWidth, size.height));

      canvas.drawPath(path, paint);

      canvas.translate(width, 0);
    }
  }

  @override
  bool shouldRepaint(_ProgressPainter oldDelegate) {
    return oldDelegate.percent != percent;
  }
}

class TriangleShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: CustomPaint(
        painter: TrianglePainter(),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
