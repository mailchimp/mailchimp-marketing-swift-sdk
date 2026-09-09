import Foundation

/// API health status.
public struct ListPingResponse: Codable, Hashable, Sendable {
    /// This will return a constant string value if the request is successful. Ex. "Everything's Chimpy!"
    public let healthStatus: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        healthStatus: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.healthStatus = healthStatus
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.healthStatus = try container.decodeIfPresent(String.self, forKey: .healthStatus)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.healthStatus, forKey: .healthStatus)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case healthStatus = "health_status"
    }
}