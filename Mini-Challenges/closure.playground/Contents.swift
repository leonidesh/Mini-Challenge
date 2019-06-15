//: Playground - noun: a place where people can play


struct MathOperation {
    var units: String
    var operation: (Double, Double) -> Double
    
    init?(units: String, operation: @escaping (Double, Double) -> Double) {
        if units.isEmpty {
            print("Units initiatlized fail")
            return nil
        }
        self.units = units
        self.operation = operation
    }
}

var I = MathOperation(units: "", operation: {(x,y)in return x+y})


if I == nil {
    print("F")
}
