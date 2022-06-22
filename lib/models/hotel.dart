class Hotel{
  String imageUrl;
  String title;
  String description;
  int price;
  double rating;


  Hotel({
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.price,
    required this.title
});

}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotel1.jpg',
    title: 'sultane dine',
    description: 'kingdom tower, Brazile',
    price: 180,
    rating: 4.5,
  ),
  Hotel(
      imageUrl: 'assets/images/hotel2.jpg',
      title: 'sultane dine',
      description: 'kingdom tower, Brazile',
      price: 180,
      rating: 4.5,
  ),
  Hotel(
      imageUrl: 'assets/images/hotel3.jpg',
      title: 'sultane dine',
      description: 'kingdom tower, Brazile',
      price: 180,
      rating: 4.5,
  ),
  Hotel(
      imageUrl: 'assets/images/hotel4.jpg',
      title: 'sultane dine',
      description: 'kingdom tower, Brazile',
      price: 180,
      rating: 4.5,
  )
];