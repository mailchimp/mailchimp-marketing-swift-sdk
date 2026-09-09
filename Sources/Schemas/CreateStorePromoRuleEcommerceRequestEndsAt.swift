import Foundation

public enum CreateStorePromoRuleEcommerceRequestEndsAt: Codable, Hashable, Sendable {
    case createStorePromoRuleEcommerceRequestEndsAtZero(CreateStorePromoRuleEcommerceRequestEndsAtZero)
    case createStorePromoRuleEcommerceRequestEndsAtOne(CreateStorePromoRuleEcommerceRequestEndsAtOne)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(CreateStorePromoRuleEcommerceRequestEndsAtZero.self) {
            self = .createStorePromoRuleEcommerceRequestEndsAtZero(value)
        } else if let value = try? container.decode(CreateStorePromoRuleEcommerceRequestEndsAtOne.self) {
            self = .createStorePromoRuleEcommerceRequestEndsAtOne(value)
        } else {
            throw DecodingError.dataCorruptedError(
                in: container,
                debugDescription: "Unexpected value."
            )
        }
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.singleValueContainer()
        switch self {
        case .createStorePromoRuleEcommerceRequestEndsAtZero(let value):
            try container.encode(value)
        case .createStorePromoRuleEcommerceRequestEndsAtOne(let value):
            try container.encode(value)
        }
    }
}