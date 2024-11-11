import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> _products = [
    {
      'name': 'Melting Cheese',
      'calories': '44 calories',
      'price': 9.47,
      'image': 'lib/images/Screenshot 2024-11-11 004026.png',
    },
    {
      'name': 'Pizza Capricciosa',
      'calories': '54 calories',
      'price': 12.55,
      'image': 'lib/images/Pizza4.jpg',
    },
    // Add more items as needed...
  ];

  final List<Map<String, dynamic>> _otherItems = [
    {
      'name': 'Spaghetti',
      'description': 'A delicious Italian pasta.',
      'price': 10.99,
      'image': 'lib/images/pasta.jpg',
    },
    {
      'name': 'Sushi Rolls',
      'description': 'Fresh sushi rolls made with seaweed and rice.',
      'price': 15.49,
      'image': 'lib/images/sushi.jpg',
    },
    {
      'name': 'Sushi Rolls',
      'description': 'Fresh sushi rolls made with seaweed and rice.',
      'price': 15.49,
      'image': 'lib/images/sushi.jpg',
    },
    {
      'name': 'Sushi Rolls',
      'description': 'Fresh sushi rolls made with seaweed and rice.',
      'price': 15.49,
      'image': 'lib/images/sushi.jpg',
    },
    {
      'name': 'Sushi Rolls',
      'description': 'Fresh sushi rolls made with seaweed and rice.',
      'price': 15.49,
      'image': 'lib/images/sushi.jpg',
    },
    {
      'name': 'Sushi Rolls',
      'description': 'Fresh sushi rolls made with seaweed and rice.',
      'price': 15.49,
      'image': 'lib/images/sushi.jpg',
    },
    {
      'name': 'Sushi Rolls',
      'description': 'Fresh sushi rolls made with seaweed and rice.',
      'price': 15.49,
      'image': 'lib/images/sushi.jpg',
    },
    {
      'name': 'Sushi Rolls',
      'description': 'Fresh sushi rolls made with seaweed and rice.',
      'price': 15.49,
      'image': 'lib/images/sushi.jpg',
    },
    {
      'name': 'Sushi Rolls',
      'description': 'Fresh sushi rolls made with seaweed and rice.',
      'price': 15.49,
      'image': 'lib/images/sushi.jpg',
    },
    {
      'name': 'Sushi Rolls',
      'description': 'Fresh sushi rolls made with seaweed and rice.',
      'price': 15.49,
      'image': 'lib/images/sushi.jpg',
    },
    {
      'name': 'Sushi Rolls',
      'description': 'Fresh sushi rolls made with seaweed and rice.',
      'price': 15.49,
      'image': 'lib/images/sushi.jpg',
    },
  ];

  final Color primaryColor = Color.fromRGBO(246, 137, 137, 1);
  List<Map<String, dynamic>> _cartItems = []; // Cart items list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          "Hi Mariam",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find your Delicious Food",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCategory("Italian", Icons.local_pizza),
                _buildCategory("Japanese", Icons.ramen_dining),
                _buildCategory("Popular", Icons.star),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Popular",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            // Vertical list of items without scrolling
            Expanded(
              child: ListView.builder(
                itemCount: _products.length,
                itemBuilder: (context, index) {
                  return _buildProductCard(_products[index]);
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Other Items",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            // Vertical list of other items
            Expanded(
              child: ListView.builder(
                itemCount: _otherItems.length,
                itemBuilder: (context, index) {
                  return _buildOtherItemCard(_otherItems[index]);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showCartDialog();
        },
        backgroundColor: primaryColor,
        child: Icon(Icons.shopping_cart),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
        selectedItemColor: const Color.fromARGB(255, 248, 167, 167),
        unselectedItemColor: const Color.fromARGB(179, 224, 153, 153),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildCategory(String label, IconData icon) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: primaryColor.withOpacity(0.1),
          child: Icon(icon, color: primaryColor),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildProductCard(Map<String, dynamic> product) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              product['image'],
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            product['name'],
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          Text(
            product['calories'],
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '\$${product['price'].toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _cartItems.add(product); // Add product to the cart
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Text('ADD TO CART'),
          ),
        ],
      ),
    );
  }

  Widget _buildOtherItemCard(Map<String, dynamic> item) {
    return GestureDetector(
      onTap: () {
        _showItemDescriptionDialog(item);
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                item['image'],
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              item['name'],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '\$${item['price'].toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _cartItems.add(item); // Add item to the cart
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text('ADD TO CART'),
            ),
          ],
        ),
      ),
    );
  }

  // Show item description dialog
  void _showItemDescriptionDialog(Map<String, dynamic> item) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(item['name']),
          content: Text(item['description']),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // Show cart contents
  void _showCartDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Your Cart'),
          content: _cartItems.isEmpty
              ? Text('Your cart is empty')
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: _cartItems.map((item) {
                    return Text('${item['name']} - \$${item['price']}');
                  }).toList(),
                ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
