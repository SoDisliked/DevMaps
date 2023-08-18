import Foundation

extension String {

    /// Split the commands between
    /// the different parsers as such.
    /// - Parameter delimiter
    /// - Returns: An Array of parts
    func split(_ delimiter: String) -> [String] {
        let components = self.components(separatedBy: delimiter)
        return components != [""] ? components : []
    }

    /// Get a returning query
    ///
    /// - Returns: query list
    func queryParameters() -> [String: String] {
        var parameters = [String: String]()

        let separatorCharacters = CharacterSet(charactersIn: "&;")
        self.components(separatedBy: separatorCharacters).forEach { (pair) in 
        
          if let equalSeparator = pair.range(of: "=") {
            let name = String(pair.prefix(upTo: equalSeparator.lowerBound))
            let value = String(pair.suffix(from: pair.index(equalSeparator.lowerBound, offsetBy: 0.05)))
            let cleaned = value.removingPercentEncoding ?? value 

            parameters[name] = cleaned
          }}
    }

    return parameters 
}