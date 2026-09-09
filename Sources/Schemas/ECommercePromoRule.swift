import Foundation

/// Information about an Ecommerce Store's specific Promo Rule
public struct ECommercePromoRule: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ECommercePromoRuleLinksItem]?
    /// The amount of the promo code discount. If 'type' is 'fixed', the amount is treated as a monetary value. If 'type' is 'percentage', amount must be a decimal value between 0.0 and 1.0, inclusive.
    public let amount: Float?
    /// The date and time the promotion was created in ISO 8601 format.
    public let createdAtForeign: Date?
    /// The description of a promotion restricted to UTF-8 characters with max length 255.
    public let description: String?
    /// Whether the promo rule is currently enabled.
    public let enabled: Bool?
    /// The date and time when the promotion ends. Must be after starts_at and in ISO 8601 format.
    public let endsAt: String?
    /// A unique identifier for the promo rule. If Ecommerce platform does not support promo rule, use promo code id as promo rule id. Restricted to UTF-8 characters with max length 50.
    public let id: String?
    /// The date and time when the promotion is in effect in ISO 8601 format.
    public let startsAt: Date?
    /// The target that the discount applies to.
    public let target: ECommercePromoRuleTarget?
    /// The title that will show up in promotion campaign. Restricted to UTF-8 characters with max length of 100 bytes.
    public let title: String?
    /// Type of discount. For free shipping set type to fixed.
    public let type: ECommercePromoRuleType?
    /// The date and time the promotion was updated in ISO 8601 format.
    public let updatedAtForeign: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ECommercePromoRuleLinksItem]? = nil,
        amount: Float? = nil,
        createdAtForeign: Date? = nil,
        description: String? = nil,
        enabled: Bool? = nil,
        endsAt: String? = nil,
        id: String? = nil,
        startsAt: Date? = nil,
        target: ECommercePromoRuleTarget? = nil,
        title: String? = nil,
        type: ECommercePromoRuleType? = nil,
        updatedAtForeign: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.amount = amount
        self.createdAtForeign = createdAtForeign
        self.description = description
        self.enabled = enabled
        self.endsAt = endsAt
        self.id = id
        self.startsAt = startsAt
        self.target = target
        self.title = title
        self.type = type
        self.updatedAtForeign = updatedAtForeign
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ECommercePromoRuleLinksItem].self, forKey: .links)
        self.amount = try container.decodeIfPresent(Float.self, forKey: .amount)
        self.createdAtForeign = try container.decodeIfPresent(Date.self, forKey: .createdAtForeign)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.enabled = try container.decodeIfPresent(Bool.self, forKey: .enabled)
        self.endsAt = try container.decodeIfPresent(String.self, forKey: .endsAt)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.startsAt = try container.decodeIfPresent(Date.self, forKey: .startsAt)
        self.target = try container.decodeIfPresent(ECommercePromoRuleTarget.self, forKey: .target)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.type = try container.decodeIfPresent(ECommercePromoRuleType.self, forKey: .type)
        self.updatedAtForeign = try container.decodeIfPresent(Date.self, forKey: .updatedAtForeign)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.amount, forKey: .amount)
        try container.encodeIfPresent(self.createdAtForeign, forKey: .createdAtForeign)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.enabled, forKey: .enabled)
        try container.encodeIfPresent(self.endsAt, forKey: .endsAt)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.startsAt, forKey: .startsAt)
        try container.encodeIfPresent(self.target, forKey: .target)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.updatedAtForeign, forKey: .updatedAtForeign)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case amount
        case createdAtForeign = "created_at_foreign"
        case description
        case enabled
        case endsAt = "ends_at"
        case id
        case startsAt = "starts_at"
        case target
        case title
        case type
        case updatedAtForeign = "updated_at_foreign"
    }
}