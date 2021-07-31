import 'package:flutter/material.dart';

class EpisodePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 414,
        height: 896,
        color: Colors.white,
        padding: const EdgeInsets.only(top: 56, ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children:[
            Container(
              width: 53,
              height: 53,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Container(
                    width: 53,
                    height: 53,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.only(left: 6, right: 5, top: 5, bottom: 4, ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 41.70,
                          height: 44.63,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlutterLogo(size: 41.704917907714844),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 739.50),
            Container(
              width: 53,
              height: 53,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Container(
                    width: 53,
                    height: 53,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(7),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 39,
                          height: 39,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlutterLogo(size: 39),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 739.50),
            Container(
              width: 338,
              height: 291,
              child: Stack(
                children:[Positioned.fill(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 271,
                      height: 291,
                      child: FlutterLogo(size: 271),
                    ),
                  ),
                ),
                  Positioned(
                    left: 250,
                    top: 15,
                    child: Container(
                      width: 88,
                      height: 122,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color(0xffe1e3e8),
                      ),
                      child: Stack(
                        children:[
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 73,
                                height: 102,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 13,
                            top: 57,
                            child: SizedBox(
                              width: 61,
                              height: 54,
                              child: Text(
                                "Lorem ipsum dolor sit amet, consec tetur adipiscing elit. Nam condimentum tempus diam, ultricies sollicitudin erat facilisis eget. Vestibulum ",
                                style: TextStyle(
                                  color: Color(0xff111111),
                                  fontSize: 4,
                                  fontFamily: "Redacted Script",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 13,
                            top: 20,
                            child: SizedBox(
                              width: 61,
                              height: 8,
                              child: Text(
                                "Lorem ipsum",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff111111),
                                  fontSize: 5,
                                  fontFamily: "Redacted Script",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 30,
                            top: 5,
                            child: Container(
                              width: 28,
                              height: 2,
                              color: Colors.black,
                            ),
                          ),
                          Positioned(
                            left: 13,
                            top: 32,
                            child: Container(
                              width: 61,
                              height: 23,
                              color: Color(0xff313131),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 250,
                    top: 74,
                    child: Container(
                      width: 65,
                      height: 83,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: FlutterLogo(size: 65),
                    ),
                  ),],
              ),
            ),
            SizedBox(height: 739.50),
            Container(
              width: 414,
              height: 294,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xff7a411c),
              ),
              padding: const EdgeInsets.only(top: 32, bottom: 41, ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Container(
                    width: 374,
                    height: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(24), bottomLeft: Radius.circular(24), bottomRight: Radius.circular(24), ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x14000000),
                          blurRadius: 1,
                          offset: Offset(0, -1),
                        ),
                        BoxShadow(
                          color: Color(0x28000000),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Color(0xfff59300),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12, ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          "Lihat berita ini! Berita ini banyak\ndibicarakan orang-orang",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22.50),
                  Container(
                    width: 374,
                    height: 54,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 374,
                          height: 54,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Container(
                                width: 374,
                                height: 54,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xff313131),
                                ),
                                padding: const EdgeInsets.only(left: 123, right: 128, top: 17, bottom: 19, ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    Text(
                                      "Baca berita",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w700,
                                      ),
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
                  SizedBox(height: 22.50),
                  Container(
                    width: 374,
                    height: 54,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 374,
                          height: 54,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Container(
                                width: 374,
                                height: 54,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xff313131),
                                ),
                                padding: const EdgeInsets.only(left: 86, right: 91, top: 17, bottom: 19, ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    Text(
                                      "Tidak usah dibaca",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w700,
                                      ),
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
                ],
              ),
            ),
            SizedBox(height: 739.50),
            Transform.rotate(
              angle: 3.14,
              child: Container(
                width: double.infinity,
                height: 896,
                child: FlutterLogo(size: 896),
              ),
            ),
          ],
        ),
      ),
    );
  }
}