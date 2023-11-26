import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the search screen after login
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ProductListScreen(),
              ),
            );
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}

class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> allProducts = [
    Product(
      id: 1,
      name: 'T-shirt',
      price: 19.99,
      image: 'https://images.unsplash.com/photo-1618517351616-38fb9c5210c6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHQlMjBzaGlydHxlbnwwfHwwfHx8MA%3D%3D',
    ),
    Product(
      id: 2,
      name: 'T-shirt',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1621353269062-6aa0165576f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&w=1000&q=80',
    ),
    Product(
      id: 2,
      name: 'T-shirt',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1618517351616-38fb9c5210c6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHQlMjBzaGlydHxlbnwwfHwwfHx8MA%3D%3D',
    ),
    Product(
      id: 2,
      name: 'T-shirt',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1527719327859-c6ce80353573?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dHNoaXJ0fGVufDB8fDB8fHww',
    ),
    Product(
      id: 2,
      name: 'T-shirt',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1484517186945-df8151a1a871?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fG1lbiUyMHRzaGlydHxlbnwwfHwwfHx8MA%3D%3D',
    ),
    Product(
      id: 2,
      name: 'Shirt',
      price: 29.99,
      image: 'https://media.istockphoto.com/id/1475289248/photo/after-work-chill.webp?b=1&s=170667a&w=0&k=20&c=awhh9Yk5koQRoV3xw-hFm9NpSqBcFPu0MoJxeZ9Lu9Y=',
    ),
    Product(
      id: 2,
      name: 'Shirt',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1589310243389-96a5483213a8?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHNoaXJ0c3xlbnwwfHwwfHx8MA%3D%3D',
    ),
    Product(
      id: 2,
      name: 'Shirt',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1598033129183-c4f50c736f10?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHNoaXJ0fGVufDB8fDB8fHww',
    ),
    Product(
      id: 2,
      name: 'Shirt',
      price: 29.99,
      image: 'https://plus.unsplash.com/premium_photo-1682430259342-427ec43ebc38?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c2hpcnR8ZW58MHx8MHx8fDA%3D',
    ),
    Product(
      id: 2,
      name: 'Shirt',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1620012253295-c15cc3e65df4?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHNoaXJ0fGVufDB8fDB8fHwwhttps://placekitten.com/200/200?image=2',
    ),
    Product(
      id: 2,
      name: 'Shirt',
      price: 29.99,
      image: 'https://media.istockphoto.com/id/182688952/photo/full-frame-blue-denim-jeans.webp?b=1&s=170667a&w=0&k=20&c=BJiLjpAHGDmNRFGBMEQCzJZN8c3QjAHOMrlPe-qbLk8=',
    ),
    Product(
      id: 2,
      name: 'Jeans',
      price: 29.99,
      image: 'https://plus.unsplash.com/premium_photo-1674828600712-7d0caab39109?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDh8fHxlbnwwfHx8fHw%3D&w=1000&q=80',
    ),
    Product(
      id: 2,
      name: 'Jeans',
      price: 29.99,
      image: 'https://media.istockphoto.com/id/182688952/photo/full-frame-blue-denim-jeans.webp?b=1&s=170667a&w=0&k=20&c=BJiLjpAHGDmNRFGBMEQCzJZN8c3QjAHOMrlPe-qbLk8=',
    ),
    Product(
      id: 2,
      name: 'Jeans',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1602293589930-45aad59ba3ab?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8amVhbnN8ZW58MHx8MHx8fDA%3D',
    ),
    Product(
      id: 2,
      name: 'Jeans',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1604176354204-9268737828e4?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8amVhbnN8ZW58MHx8MHx8fDA%3D',
    ),
    Product(
      id: 2,
      name: 'Jeans',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1605518216938-7c31b7b14ad0?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZGVuaW0lMjBqZWFuc3xlbnwwfHwwfHx8MA%3D%3D',
    ),
    Product(
      id: 2,
      name: 'Jeans',
      price: 29.99,
      image: 'https://plus.unsplash.com/premium_photo-1665664652383-2308d742943c?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8amVhbnN8ZW58MHx8MHx8fDA%3D',
    ),
    Product(
      id: 2,
      name: 'Jeans',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1565084888279-aca607ecce0c?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8amVhbnN8ZW58MHx8MHx8fDA%3D',
    ),
    Product(
      id: 2,
      name: 'Watch',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1533139502658-0198f920d8e8?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHdhdGNofGVufDB8fDB8fHww',
    ),
    Product(
      id: 2,
      name: 'Watch',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1619134778706-7015533a6150?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHdhdGNoZXN8ZW58MHx8MHx8fDA%3D',
    ),
    Product(
      id: 2,
      name: 'Watch',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1506193095-80bc749473f2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d29tYW4lMjB3YXRjaHxlbnwwfHwwfHx8MA%3D%3D',
    ),
    Product(
      id: 2,
      name: 'Watch',
      price: 29.99,
      image: 'https://www.google.com/search?q=watch+unsplash+image&sca_esv=585384425&rlz=1C1VDKB_enIN1085IN1085&tbm=isch&source=lnms&sa=X&ved=2ahUKEwiqrJ6Yr-GCAxVQ8DgGHcBYDyUQ_AUoAXoECAEQAw&biw=1536&bih=730&dpr=1.25#imgrc=HRQOHmJn-ouK5M',
    ),
    Product(
      id: 2,
      name: 'Watch',
      price: 29.99,
      image: 'https://www.google.com/search?q=watch+unsplash+image&sca_esv=585384425&rlz=1C1VDKB_enIN1085IN1085&tbm=isch&source=lnms&sa=X&ved=2ahUKEwiqrJ6Yr-GCAxVQ8DgGHcBYDyUQ_AUoAXoECAEQAw&biw=1536&bih=730&dpr=1.25#imgrc=cuEW61WCFS4lpM',
    ),
    Product(
      id: 2,
      name: 'Watch',
      price: 29.99,
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlw8r6qDIKeVyGTxZJ_cU3-CtY_a0yRZpIYQ&usqp=CAU',
    ),
    Product(
      id: 2,
      name: 'Shoes',
      price: 29.99,
      image: 'https://media.istockphoto.com/id/1350560575/photo/pair-of-blue-running-sneakers-on-white-background-isolated.webp?b=1&s=170667a&w=0&k=20&c=liUSgX6SafJ7HWvefFqR9-pnf3KuH6v1lwQ6iEpePWc=',
    ),
    Product(
      id: 2,
      name: 'Shoes',
      price: 29.99,
      image: 'https://media.istockphoto.com/id/1629114862/photo/close-up-of-white-sports-shoes-on-a-white-background.webp?b=1&s=170667a&w=0&k=20&c=xJnzhqYgVTrLE_d3OB5FCAq34UBvYKCq3PgPUkrxjeM=',
    ),
    Product(
      id: 2,
      name: 'shoes',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1595341888016-a392ef81b7de?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHNob2VzfGVufDB8fDB8fHww',
    ),
    Product(
      id: 2,
      name: 'Shoes',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1603808033192-082d6919d3e1?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHNob2VzfGVufDB8fDB8fHww',
    ),
    Product(
      id: 2,
      name: 'Shoes',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1549298916-b41d501d3772?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c2hvZXN8ZW58MHx8MHx8fDA%3D',
    ),
    Product(
      id: 2,
      name: 'Shoes',
      price: 29.99,
      image: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D',
    ),
    // Add more products as needed
  ];

  List<Product> displayedProducts = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayedProducts = List.from(allProducts);
  }

  void _searchProducts(String query) {
    setState(() {
      displayedProducts = allProducts
          .where((product) => product.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: searchController,
          onChanged: _searchProducts,
          decoration: InputDecoration(
            hintText: 'Search products...',
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: displayedProducts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(displayedProducts[index].name),
            subtitle: Text('\$${displayedProducts[index].price.toStringAsFixed(2)}'),
            leading: Image.network(displayedProducts[index].image),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(product: displayedProducts[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Product {
  final int id;
  final String name;
  final double price;
  final String image;


  Product({required this.id, required this.name, required this.price, required this.image});
}

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  ProductDetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(product.image),
          SizedBox(height: 20),
          Text(
            product.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('Price: \$${product.price.toStringAsFixed(2)}'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Simulate payment processing
              _showSuccessDialog(context);
            },
            child: Text('Proceed to Payment'),
          ),
        ],
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Payment Successful'),
          content: Text('Thank you for your purchase!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
