class Product {
  String name;
  String description;
  double price;
  String image;
  String category;

  // Constructor with named and required parameters
  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
  });

  // Method returning the price
  double getPrice() {
    return price;
  }
}

class Article {
  // Constructor with parameters
  // Named and required parameters
  Article({
    required this.product,
    required this.quantity,
  });

  final Product product;
  final int quantity;

  // Method returning price
  double getTotalPrice() {
    return product.price * quantity;
  }
}

void main() {
  // Create a list of products
  List<Product> products = [
    Product(
      name: "Laptop",
      description: "Powerful laptop for development",
      price: 1200.0,
      image: "laptop_image.jpg",
      category: "Electronics",
    ),
    // More products as needed
  ];

  // Create an article with the first product and a quantity
  Article article = Article(product: products.first, quantity: 2);

  // Print the name and price of the first product
  print("Product: ${article.product.name}");
  print("Total Price: €${article.getTotalPrice()} EUR");
}

