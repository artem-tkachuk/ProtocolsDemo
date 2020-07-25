//
//  main.swift
//  ProtocolsDemo
//
//  Created by Artem Tkachuk on 7/24/20.
//  Copyright © 2020 Artem Tkachuk. All rights reserved.
//

protocol CanFly {
    func fly()
}

//Default implementation of the protocol method
extension CanFly {
    func fly() {
        print("The object lifts off into the air.")
    }
}

class Bird {
    var isFemaile = true
    
//    func fly() {
//        print("The eagle flaps its wings and lifts off into the sky.")
//    }
    
    func layEgg() {
        if isFemaile {
            print("The bird makes a new bird in a shell.")
        }
    }
}

class Eagle: Bird, CanFly {
//    func fly() {
//        print("The eagle flaps its wings and lifts off into the sky.")
//    }
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("Penguin paddles through the water")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
//    func fly() {
//        print("The airplane uses its engine to life off into the air.")
//    }
}

let myEagle = Eagle()
myEagle.fly()
myEagle.soar()

let myPenguin = Penguin()
myPenguin.layEgg()
myPenguin.swim()
//myPenguin.fly() // Our penguin inherits some functionality that it should not

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
//museum.flyingDemo(flyingObject: myPenguin)

let myPlane = Airplane()
museum.flyingDemo(flyingObject: myPlane)
myPlane.fly()

