//: [Previous](@previous)
import Foundation

@propertyWrapper
struct TwelveOrLess {
    private var number: Int = 0
    var wrappedValue: Int {
        get {
            number
        }
        set {
            number = min(newValue, 12)
        }
    }
}

struct SmallRectangle {
     @TwelveOrLess var height: Int
     @TwelveOrLess var width: Int
}

var rectangle = SmallRectangle()
print(rectangle.height)

rectangle.height = 10
print(rectangle.height)

rectangle.height = 24
print(rectangle.height)

@propertyWrapper
struct SmallNumber {
    private var maximum: Int
    private var number: Int
    
    var wrappedValue: Int {
        get { number }
        set { number = min(newValue, maximum) }
    }
    
    init() {
        maximum = 12
        number = 0
    }
    
    init(wrappedValue: Int) {
        maximum = 12
        number = min(wrappedValue, maximum)
    }
    
    init(wrappedValue: Int, maximum: Int) {
        self.maximum = maximum
        number = min(wrappedValue, maximum)
    }
}

struct ZeroRectangle {
    @SmallNumber var height: Int
    @SmallNumber var width: Int
}

var zeroRectangle = ZeroRectangle()
print(zeroRectangle.height, zeroRectangle.width)

struct UnitRectangle {
    @SmallNumber var height: Int = 1
    @SmallNumber var width: Int = 1
}

var unitRectangle = UnitRectangle()
print(unitRectangle.height, unitRectangle.width)

struct NarrowRectangle {
    @SmallNumber(wrappedValue: 2, maximum: 5) public var height: Int
    @SmallNumber(wrappedValue: 3, maximum: 4) public var width: Int
}

var narrowRectangle = NarrowRectangle()
print(narrowRectangle.width, narrowRectangle.height)

narrowRectangle.height = 100
narrowRectangle.width = 100

print(narrowRectangle.width, narrowRectangle.height)

struct MixedRectangle {
    @SmallNumber var height: Int = 1
    @SmallNumber(maximum: 9) var width: Int = 2
}

var mixedRectangle = MixedRectangle()
print(mixedRectangle.height)

mixedRectangle.height = 20
print(mixedRectangle.height)

@propertyWrapper
struct ProjectNumber {
    private var number: Int
    private(set) var projectedValue: Bool
    
    var wrappedValue: Int {
        get { number }
        set {
            if newValue > 12 {
                number = 12
                projectedValue = true
            } else {
                number = newValue
                projectedValue = false
            }
        }
    }
    
    init() {
        self.number = 0
        self.projectedValue = false
    }
}

struct SomeStructure {
    @ProjectNumber var someNumber: Int
}

var someStructure = SomeStructure()
someStructure.someNumber = 4
print(someStructure.$someNumber)

someStructure.someNumber = 55
print(someStructure.$someNumber)

enum Size {
    case small, large
}

struct SizedRectangle {
    @ProjectNumber var height: Int
    @ProjectNumber var width: Int
    
    mutating func resize(to size: Size) -> Bool {
        switch size {
        case .small:
            height = 10
            width = 20
        case .large:
            height = 100
            width = 100
        }
        return $height || $width
    }
}

//: [Next](@next)
