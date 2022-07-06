class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {this.id = 1,
      this.name = 'MyItemName',
      this.desc = 'MyItemDescription MyItemDescription',
      this.price = 0,
      this.color = 'Blue',
      this.image =
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4yPm7xXWr5zkytQnsTq4c5ON7fyiSuELZLg&usqp=CAU'});
}

class CatalogModel {
  static final items1 = [Item()];
  static final items = List.generate(5, (index) => items1[0]);
}
