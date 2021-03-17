//
// OrderResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct OrderResponse: Codable {

    public var price: Double
    public var quantity: Int

    public init(price: Double, quantity: Int) {
        self.price = price
        self.quantity = quantity
    }

}