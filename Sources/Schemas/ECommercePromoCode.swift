import Foundation

/// Information about an Ecommerce Store's specific Promo Code
public struct ECommercePromoCode: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ECommercePromoCodeLinksItem]?
    /// The discount code. Restricted to UTF-8 characters with max length 50.
    public let code: String?
    /// The date and time the promotion was created in ISO 8601 format.
    public let createdAtForeign: Date?
    /// Whether the promo code is currently enabled.
    public let enabled: Bool?
    /// A unique identifier for the promo Code.
    public let id: String?
    /// The url that should be used in the promotion campaign restricted to UTF-8 characters with max length 2000.
    public let redemptionUrl: String?
    /// The date and time the promotion was updated in ISO 8601 format.
    public let updatedAtForeign: Date?
    /// Number of times promo code has been used.
    public let usageCount: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ECommercePromoCodeLinksItem]? = nil,
        code: String? = nil,
        createdAtForeign: Date? = nil,
        enabled: Bool? = nil,
        id: String? = nil,
        redemptionUrl: String? = nil,
        updatedAtForeign: Date? = nil,
        usageCount: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.code = code
        self.createdAtForeign = createdAtForeign
        self.enabled = enabled
        self.id = id
        self.redemptionUrl = redemptionUrl
        self.updatedAtForeign = updatedAtForeign
        self.usageCount = usageCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ECommercePromoCodeLinksItem].self, forKey: .links)
        self.code = try container.decodeIfPresent(String.self, forKey: .code)
        self.createdAtForeign = try container.decodeIfPresent(Date.self, forKey: .createdAtForeign)
        self.enabled = try container.decodeIfPresent(Bool.self, forKey: .enabled)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.redemptionUrl = try container.decodeIfPresent(String.self, forKey: .redemptionUrl)
        self.updatedAtForeign = try container.decodeIfPresent(Date.self, forKey: .updatedAtForeign)
        self.usageCount = try container.decodeIfPresent(Int.self, forKey: .usageCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.code, forKey: .code)
        try container.encodeIfPresent(self.createdAtForeign, forKey: .createdAtForeign)
        try container.encodeIfPresent(self.enabled, forKey: .enabled)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.redemptionUrl, forKey: .redemptionUrl)
        try container.encodeIfPresent(self.updatedAtForeign, forKey: .updatedAtForeign)
        try container.encodeIfPresent(self.usageCount, forKey: .usageCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case code
        case createdAtForeign = "created_at_foreign"
        case enabled
        case id
        case redemptionUrl = "redemption_url"
        case updatedAtForeign = "updated_at_foreign"
        case usageCount = "usage_count"
    }
}