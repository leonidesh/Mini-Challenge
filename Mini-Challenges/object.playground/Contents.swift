//: Playground - noun: a place where people can play

class Dog {
    var name: String
    var owner: String
    var age: Int
    
    init(name: String, owner: String, age: Int){
        self.name = name
        self.owner = owner
        self.age = age
        self.dogTag = "If lost, call " + owner
    }

func bark () {
    print("Woof")
}

    var dogTag: String

}

let puppy = Dog(name: "Orion", owner: "Shawn", age: 1)
puppy.bark()
print(puppy.dogTag)




