import Foundation

/// abandonedCart automation details.
public struct ECommerceStoreAutomationsAbandonedCart: Codable, Hashable, Sendable {
    /// Unique ID of automation parent campaign.
    public let id: String?
    /// Whether this store supports the abandonedCart automation.
    public let isSupported: Bool?
    /// Status of the abandonedCart automation.
    public let status: ECommerceStoreAutomationsAbandonedCartStatus?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String? = nil,
        isSupported: Bool? = nil,
        status: ECommerceStoreAutomationsAbandonedCartStatus? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.isSupported = isSupported
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.isSupported = try container.decodeIfPresent(Bool.self, forKey: .isSupported)
        self.status = try container.decodeIfPresent(ECommerceStoreAutomationsAbandonedCartStatus.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.isSupported, forKey: .isSupported)
        try container.encodeIfPresent(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case isSupported = "is_supported"
        case status
    }
}