//
// MarketInstrument.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct MarketInstrument: Codable {

    public var figi: String
    public var ticker: String
    public var isin: String?
    /** Шаг цены */
    public var minPriceIncrement: Double?
    public var lot: Int
    /** Минимальное число инструментов для покупки должно быть не меньше, чем размер лота х количество лотов */
    public var minQuantity: Int?
    public var currency: Currency?
    public var name: String
    public var type: InstrumentType

    public init(figi: String, ticker: String, isin: String? = nil, minPriceIncrement: Double? = nil, lot: Int, minQuantity: Int? = nil, currency: Currency? = nil, name: String, type: InstrumentType) {
        self.figi = figi
        self.ticker = ticker
        self.isin = isin
        self.minPriceIncrement = minPriceIncrement
        self.lot = lot
        self.minQuantity = minQuantity
        self.currency = currency
        self.name = name
        self.type = type
    }

}
