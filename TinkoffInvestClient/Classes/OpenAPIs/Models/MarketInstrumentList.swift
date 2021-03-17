//
// MarketInstrumentList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct MarketInstrumentList: Codable {

    public var total: Double
    public var instruments: [MarketInstrument]

    public init(total: Double, instruments: [MarketInstrument]) {
        self.total = total
        self.instruments = instruments
    }

}