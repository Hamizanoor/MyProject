import 'dart:io';

List items = [];
void addnewitem(int id, String itemName, int quantity, int price) {
  Map<String, dynamic> item = {
    "id": id,
    "name": itemName,
    "quantity": quantity,
    "price": price
  };
  items.add(item);
  print("Items Added succesfully");
}

void viewitem(int id) {
  for (var item in items) {
    if (item["id"] == id) {
      print("Item found");
      print("id ${item["id"]}");
      print("name ${item["name"]}");
      print("quantity ${item["quantity"]}");
      print("price ${item["price"]}");
      return;
    }
  }
  print("Item not found.");
}

void updateitem(int newid, String newname, int newquantity, int newprice) {
  for (var item in items) {
    if (item['id'] == newid) {
      item['name'] = newname;
      item['quantity'] = newquantity;
      item['price'] = newprice;
      print('Item updated successfully');
      return;
    }
  }
  print('Item not found.');
}

void deleteitem(int id) {
  for (var item in items) {
    if (item["id"] == id) {
      items.remove(item);
      print("item deleted successfully.");
      return;
    }
  }
  print("item not found.");
}

void main() {
  print("====welcome to my Bakery Shop====");
  var isopen = true;
  while (isopen) {
    print("press 1 for Add new item");
    print("press 2 for view item ");
    print("press 3 for update item");
    print("press 4 for delete item");
    print("press 5 or anykey for exit");
    var userinput = stdin.readLineSync()!;

    if (userinput == "1") {
      print("Enter item id:");
      int id = int.parse(stdin.readLineSync()!);
      print("Enter item name");
      String name = stdin.readLineSync()!;
      print("Enter item quantity");
      int quantity = int.parse(stdin.readLineSync()!);
      print("Enter item price");
      int price = int.parse(stdin.readLineSync()!);
      addnewitem(id, name, quantity, price);
    } else if (userinput == "2") {
      print(" Please Enter item id");
      int id = int.parse(stdin.readLineSync()!);
      viewitem(id);
    } else if (userinput == "3") {
      print("Please enter item id");
      int id = int.parse(stdin.readLineSync()!);
      print("Enter new name");
      String name = stdin.readLineSync()!;
      print("Enter new quantity");
      int quantity = int.parse(stdin.readLineSync()!);
      print("Enter new price");
      int price = int.parse(stdin.readLineSync()!);
      updateitem(id, name, quantity, price);
    } else if (userinput == "4") {
      print("Please Enter Item id");
      int id = int.parse(stdin.readLineSync()!);

      deleteitem(id);
    } else {
      print("bakeryshopisclosed");
      isopen = false;
      return;
    }
  }
  print("===================");
}
