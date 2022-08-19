import PackageA
import PackageB

public class CompanyList {
    private var companies: [Company] = []
    
    public init() {
    }
    
    public func add(company: Company) {
        self.companies.append(company)
    }
    
    public var allEmployees: Int {
        companies.reduce(0) { $0 + $1.employees.count }
    }
}
