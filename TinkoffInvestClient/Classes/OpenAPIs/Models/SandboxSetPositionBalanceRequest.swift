//
// SandboxSetPositionBalanceRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct SandboxSetPositionBalanceRequest: Codable {

    public var figi: String?
    public var balance: Double

    public init(figi: String? = nil, balance: Double) {
        self.figi = figi
        self.balance = balance
    }

}
