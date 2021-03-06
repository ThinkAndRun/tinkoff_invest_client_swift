//
// OperationTrade.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct OperationTrade: Codable {

    public var tradeId: String
    /** ISO8601 */
    public var date: Date
    public var price: Double
    public var quantity: Int

    public init(tradeId: String, date: Date, price: Double, quantity: Int) {
        self.tradeId = tradeId
        self.date = date
        self.price = price
        self.quantity = quantity
    }

}
