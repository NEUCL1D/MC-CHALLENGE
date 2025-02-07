//Challenge : Car Rental System (Dart OOP)
void main() {
// test of the functionalities 
void main() {
  // Create a rental system instance
  RentalSystem RS = RentalSystem();

  // Add some cars to the inventory
  RS.addCar("Toyota Corolla");
  RS.addCar("Honda Civic");
  RS.addCar("Ford Mustang");

  // Display available cars
  print("\n--- Available Cars ---");
  RS.displayCars();

  // Rent a car
  print("\nRenting a Honda Civic...");
  RS.rentCar("Honda Civic");

  // Try renting a car that is not in inventory
  print("\nRenting a Tesla Model S...");
  RS.rentCar("Tesla Model S");

  // Display cars after renting
  print("\n--- Cars After Renting ---");
  RS.displayCars();

  // Return a car
  print("\nReturning Honda Civic...");
  RS.returnCar("Honda Civic");

  // Try returning a car that was not rented
  print("\nReturning Ford Mustang (wasn't rented)...");
  RS.returnCar("Ford Mustang");

  // Display cars after returning
  print("\n--- Cars After Returning ---");
  RS.displayCars();
}

}

class Car {
  String model;
  bool isAvailable;
	// the constructor of the class car
  Car(String model) {
    this.model = model;
    this.isAvailable = true; // the availability is set to true by default
  }
	// rentCar and returnCar will act somehow as setters for the isAvailable boolean
  void rentCar() {
    isAvailable = false;
  }

  void returnCar() {
    isAvailable = true;
  }
}

class RentalSystem {
	// creation of an empty groable list of car
  List<Car> inventory = [];

  void addCar(String model) {
    var car = Car(model);
    inventory.add(car);
  }

  void rentCar(String model) {
    for (var car in inventory) {
      if (car.model == model && car.isAvailable) {
        car.rentCar();
        print("$model has been rented.");
        return; // the method is exited if the operation was done successfully
      }
    }
    print("$model is not available."); // else the model is not available
  }

  void returnCar(String model) {
    for (var car in inventory) {
      if (car.model == model && !car.isAvailable) {
        car.returnCar();
        print("$model has been returned.");
        return;
      }
    }
    print("No rented $model is found.");
  }

  void displayCars() {
    for (var car in inventory) {
	// display of cars using ternary operator
      print("Model: ${car.model}, Available: ${car.isAvailable ? 'Yes' : 'No'}");
    }
  }
}
