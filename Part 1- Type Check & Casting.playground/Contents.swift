import UIKit

// TypeCheckAndCasting.swift

// Define the base class Vehicle
class Vehicle {
    // Base class can have common properties and methods for all vehicles
}

// Define the subclass Car
class Car: Vehicle {
    // Car specific properties and methods
}

// Define the subclass Bike
class Bike: Vehicle {
    // Bike specific properties and methods
}

// Instantiate an array of Vehicle objects containing both Car and Bike instances
let vehicles: [Vehicle] = [Car(), Bike(), Car(), Bike()]

// Function to describe vehicles
func describeVehicles(vehicles: [Vehicle]) {
    for vehicle in vehicles {
        // Type checking using 'is'
        if vehicle is Car {
            print("This vehicle is a Car.")
        } else if vehicle is Bike {
            print("This vehicle is a Bike.")
        }
        
        // Type casting using 'as?'
        if let car = vehicle as? Car {
            print("Successfully casted to Car.")
        } else if let bike = vehicle as? Bike {
            print("Successfully casted to Bike.")
        }
    }
}

// Call the function to describe vehicles
describeVehicles(vehicles: vehicles)
