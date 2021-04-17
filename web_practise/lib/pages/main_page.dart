import 'package:flutter/material.dart';
import 'package:web_practise/utils/constants.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: 800,
          child: const _RegularVersion(),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "New Place",
          style: TextStyle(
              color: Utils.mainColor,
              fontWeight: FontWeight.bold,
              fontSize: 32.0),
        ),
        Row(
          children: [
            Text(
              "Home",
              style: TextStyle(
                  color: Utils.mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            const SizedBox(width: 36.0),
            Text(
              "Feature",
              style: TextStyle(
                  color: Utils.mainColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0),
            ),
            const SizedBox(width: 36.0),
            Text(
              "Services",
              style: TextStyle(
                  color: Utils.mainColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0),
            ),
            const SizedBox(width: 36.0),
            ElevatedButton(
              onPressed: () {
                print(size.width);
              },
              child: Text(
                "Contact us",
                style: TextStyle(
                    color: Color(0xff5574db),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 18.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                primary: Color(0xffeaeefb),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _RegularVersion extends StatelessWidget {
  const _RegularVersion();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double horizontalPadding = size.width * 0.08;
    final double verticalPadding = size.height * 0.02;

    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/machine.jpg"),
                fit: BoxFit.cover),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.6),
        ),
        Center(
          child: Container(
            width: 1000,
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: verticalPadding,
                  ),
                  child: const _Header(),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            "New Place 으으으",
                            style:
                                TextStyle(fontSize: 48.0, color: Colors.white),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "더 많은 기회를 노린다.",
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.white),
                                ),
                                const SizedBox(height: 24.0),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text("자세히 보기"),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.black),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding, vertical: verticalPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: const SizedBox(),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 16.0,
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "대구광역시 달서구 호림동",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class _SmallVersion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
