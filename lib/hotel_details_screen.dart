import 'package:flutter/material.dart';
import 'package:hotel_booking_app/models/hotel.dart';

class DetailsScreen extends StatefulWidget {
  final Hotel hotel;

  const DetailsScreen({required this.hotel});
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    )
                  ],
                ),
                child: Hero(
                  tag: widget.hotel.imageUrl,
                  child: Image(
                    image: AssetImage(widget.hotel.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  top: 50,
                  left: 10,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white.withOpacity(0.6),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              widget.hotel.title,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 5.0,
            ),
            child: Row(
              children: [
                Text(
                  widget.hotel.description,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '-show in map',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0),
            child: Text(
              '7 km du centre Le paisible Hotel Restaurant Jonkhans est situé au bord de la réserve naturelle Hetter, à 12 minutes en voiture du centre de Rees.',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          color: Color(0xff003aab).withOpacity(0.5),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '\$${widget.hotel.price}',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff003aab).withOpacity(0.9),
                        ),
                      ),
                    ],
                  ),
                ),
                //reviews
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Reviews',
                        style: TextStyle(
                          color: Color(0xff003aab).withOpacity(0.5),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Text('${widget.hotel.rating}',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                          ),
                          Icon(Icons.star, size: 14, color: Colors.blue),
                          Icon(Icons.star, size: 14, color: Colors.blue),
                          Icon(Icons.star, size: 14, color: Colors.blue),
                          Icon(Icons.star, size: 14, color: Colors.blue),
                          Icon(Icons.star_half, size: 14, color: Colors.blue),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Recently booked',
                        style: TextStyle(
                          color: Color(0xff003aab).withOpacity(0.5),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 20,
                            width: 80,
                          ),
                          Positioned(
                              left: 20,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(hotels[0].imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                          ),
                          Positioned(
                            left: 30,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage(hotels[1].imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 40,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage(hotels[2].imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 50,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff003aab),
                              ),
                              child: Center(
                                child: Text(
                                  '+3',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Aminities',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(4.0,6.0),
                            blurRadius: 10.0,
                            spreadRadius: 2,
                          )
                        ]
                      ),
                      child: Center(
                        child: Icon(
                          Icons.directions_car,
                          size: 20,
                          color: Color(0xff003aab).withOpacity(0.8),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('parcking',
                    style:
                      TextStyle(
                          fontSize: 10,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff003aab).withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(4.0,6.0),
                              blurRadius: 10.0,
                              spreadRadius: 2,
                            )
                          ]
                      ),
                      child: Center(
                        child: Icon(
                          Icons.hot_tub,
                          size: 20,
                          color: Color(0xff003aab).withOpacity(0.8),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Bath',
                      style:
                      TextStyle(
                        fontSize: 10,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff003aab).withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(4.0,6.0),
                              blurRadius: 10.0,
                              spreadRadius: 2,
                            )
                          ]
                      ),
                      child: Center(
                        child: Icon(
                          Icons.local_bar,
                          size: 20,
                          color: Color(0xff003aab).withOpacity(0.8),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Bar',
                      style:
                      TextStyle(
                        fontSize: 10,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff003aab).withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(4.0,6.0),
                              blurRadius: 10.0,
                              spreadRadius: 2,
                            )
                          ]
                      ),
                      child: Center(
                        child: Icon(
                          Icons.wifi,
                          size: 20,
                          color: Color(0xff003aab).withOpacity(0.8),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Wifi',
                      style:
                      TextStyle(
                        fontSize: 10,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff003aab).withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(4.0,6.0),
                              blurRadius: 10.0,
                              spreadRadius: 2,
                            )
                          ]
                      ),
                      child: Center(
                        child: Icon(
                          Icons.directions_bike,
                          size: 20,
                          color: Color(0xff003aab).withOpacity(0.8),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Gym',
                      style:
                      TextStyle(
                        fontSize: 10,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff003aab).withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(4.0,6.0),
                              blurRadius: 10.0,
                              spreadRadius: 2,
                            )
                          ]
                      ),
                      child: Center(
                        child: Icon(
                          Icons.more_horiz,
                          size: 20,
                          color: Color(0xff003aab).withOpacity(0.8),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('More',
                      style:
                      TextStyle(
                        fontSize: 10,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff003aab).withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0,top: 15.0, bottom: 5),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,

                      )
                    ]
                  ),
                  child: Center(
                    child: Icon(
                      Icons.favorite_border,
                      color: Color(0xff003aab).withOpacity(0.5),
                      size: 40.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff003aab),
                    borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0,

                        )
                      ]
                  ),
                  child: Center(
                    child: Text(
                      'Book now',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
