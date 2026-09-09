import Foundation

extension Requests {
    public struct CreateStorePromoRuleEcommerceRequest: Codable, Hashable, Sendable {
        public let amount: CreateStorePromoRuleEcommerceRequestAmount
        /// The date and time the promotion was created in ISO 8601 format.
        public let createdAtForeign: String?
        /// The description of a promotion restricted to UTF-8 characters with max length 255.
        public let description: String
        /// Whether the promo rule is currently enabled.
        public let enabled: Bool?
        public let endsAt: CreateStorePromoRuleEcommerceRequestEndsAt?
        /// A unique identifier for the promo rule. If Ecommerce platform does not support promo rule, use promo code id as promo rule id. Restricted to UTF-8 characters with max length 50.
        public let id: String
        public let startsAt: CreateStorePromoRuleEcommerceRequestStartsAt?
        /// The target that the discount applies to.
        public let target: CreateStorePromoRuleEcommerceRequestTarget
        /// The title that will show up in promotion campaign. Restricted to UTF-8 characters with max length of 100 bytes.
        public let title: String?
        /// Type of discount. For free shipping set type to fixed.
        public let type: CreateStorePromoRuleEcommerceRequestType
        /// The date and time the promotion was updated in ISO 8601 format.
        public let updatedAtForeign: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            amount: CreateStorePromoRuleEcommerceRequestAmount,
            createdAtForeign: String? = nil,
            description: String,
            enabled: Bool? = nil,
            endsAt: CreateStorePromoRuleEcommerceRequestEndsAt? = nil,
            id: String,
            startsAt: CreateStorePromoRuleEcommerceRequestStartsAt? = nil,
            target: CreateStorePromoRuleEcommerceRequestTarget,
            title: String? = nil,
            type: CreateStorePromoRuleEcommerceRequestType,
            updatedAtForeign: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
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
            self.amount = try container.decode(CreateStorePromoRuleEcommerceRequestAmount.self, forKey: .amount)
            self.createdAtForeign = try container.decodeIfPresent(String.self, forKey: .createdAtForeign)
            self.description = try container.decode(String.self, forKey: .description)
            self.enabled = try container.decodeIfPresent(Bool.self, forKey: .enabled)
            self.endsAt = try container.decodeIfPresent(CreateStorePromoRuleEcommerceRequestEndsAt.self, forKey: .endsAt)
            self.id = try container.decode(String.self, forKey: .id)
            self.startsAt = try container.decodeIfPresent(CreateStorePromoRuleEcommerceRequestStartsAt.self, forKey: .startsAt)
            self.target = try container.decode(CreateStorePromoRuleEcommerceRequestTarget.self, forKey: .target)
            self.title = try container.decodeIfPresent(String.self, forKey: .title)
            self.type = try container.decode(CreateStorePromoRuleEcommerceRequestType.self, forKey: .type)
            self.updatedAtForeign = try container.decodeIfPresent(String.self, forKey: .updatedAtForeign)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.amount, forKey: .amount)
            try container.encodeIfPresent(self.createdAtForeign, forKey: .createdAtForeign)
            try container.encode(self.description, forKey: .description)
            try container.encodeIfPresent(self.enabled, forKey: .enabled)
            try container.encodeIfPresent(self.endsAt, forKey: .endsAt)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.startsAt, forKey: .startsAt)
            try container.encode(self.target, forKey: .target)
            try container.encodeIfPresent(self.title, forKey: .title)
            try container.encode(self.type, forKey: .type)
            try container.encodeIfPresent(self.updatedAtForeign, forKey: .updatedAtForeign)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
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
}