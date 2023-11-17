//
//  AppleMusicAPIJSON.swift
//  ChipsSaveJSON
//
//  Created by Sophia Edwards on 11/16/23.
//

import Foundation
struct Person: Codable {
    var name: String
    var age: Int
    var email: String
}

// Creating an instance of the Person struct
let person = Person(name: "John Doe", age: 25, email: "john.doe@example.com")

// Encoding to JSON
do {
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    let jsonData = try encoder.encode(person)
    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print("Encoded JSON:\n\(jsonString)")
    }
} catch {
    print("Error encoding JSON: \(error)")
}

// Decoding from JSON
let json = """
{
    "name": "Jane Doe",
    "age": 30,
    "email": "jane.doe@example.com"
}
"""

do {
    let decoder = JSONDecoder()
    let decodedPerson = try decoder.decode(Person.self, from: json.data(using: .utf8)!)
    print("Decoded Person:\n\(decodedPerson)")
} catch {
    print("Error decoding JSON: \(error)")
}
