//
// MarketOrderResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct MarketOrderResponse: Codable {

    public var trackingId: String
    public var status: String = "Ok"
    public var payload: PlacedMarketOrder

    public init(trackingId: String, status: String = "Ok", payload: PlacedMarketOrder) {
        self.trackingId = trackingId
        self.status = status
        self.payload = payload
    }

}
