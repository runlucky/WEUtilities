import PackageA

public class Company {
    public private(set) var employees: [Employee] = []
    
    public init() {}
    
    public func hire(name: String) {
        let id = self.employees.count + 1
        self.employees.append(Employee(id: id, name: name))
    }
    
    public func greetAll() {
        employees.forEach { $0.greet() }
    }
}

extension Employee {
    public func greet() {
        print("I am \(name).")
    }
}
