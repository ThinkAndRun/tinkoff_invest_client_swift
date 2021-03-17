//
// OperationsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct OperationsResponse: Codable {

    public var trackingId: String
    public var status: String = "Ok"
    public var payload: Operations

    public init(trackingId: String, status: String = "Ok", payload: Operations) {
        self.trackingId = trackingId
        self.status = status
        self.payload = payload
    }

}
