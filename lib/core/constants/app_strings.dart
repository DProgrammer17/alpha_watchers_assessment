abstract class AppStrings {
  static const appName = 'App Watchers';
  static const home = 'Home';
  static const cart = 'Cart';
  static const favorites = 'Favorites';
  static const profile = 'Profile';
  static const deliveryAddress = 'DELIVERY ADDRESS';
  static const umezike = 'Umuezike Road, Oyo State';
  static const technology = 'Technology';
  static const technologySubText = 'Smartphones, Laptops & \nAssecories';
  static const iphoneTitle = 'Apple iPhone 16\n128GB|Teal';
  static const iphonePrice = '\$700.00';
  static const macBookTitle = 'M4 Macbook Air 13”\n256GB|Sky blue';
  static const macBookPrice = '\$1000.00';
  static const pixelTitle = 'Google Pixel 9A\n128GB|Iris';
  static const pixelPrice = '\$499.00';
  static const airpodsTitle = 'Apple Airpods 4\nActive Noise Cancellation|Teal';
  static const airpodsPrice = '\$129.00';
  static const searchHint = 'Search...';
  static const goBack = 'Go back';
  static const addCart = 'Add to cart';
  static const yourCart = 'Your Cart';
  static const inStock = 'In stock';
  static const orderInfo = 'Order Info';
  static const subtotal = 'Subtotal';
  static const shipping = 'Shipping';
  static const total = 'Total';
  static String checkout(double totalAmount) => 'Checkout (\$${totalAmount.toStringAsFixed(0)})';
  static const iphoneInfo =
      'About this item\n This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers. \nThere will be no visible cosmetic imperfections when held at an arm’s length. There will be no visible cosmetic imperfections when held at an arm’s length.\nThis product will have a battery which exceeds 80% capacity relative to new.\nAccessories will not be original, but will be compatible and fully functional. Product may come in generic Box.\nThis product is eligible for a replacement or refund within 90 days of receipt if you are not satisfied.';
}

abstract class ErrorStrings{
  static const actionNotPossible = 'Action not possible.';
  static const itemAlreadyInCart = 'Item already in cart';
  static const itemAddedToCart = 'Item has been added to cart';
}
