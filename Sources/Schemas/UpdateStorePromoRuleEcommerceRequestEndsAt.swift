import Foundation

public enum UpdateStorePromoRuleEcommerceRequestEndsAt: Codable, Hashable, Sendable {
    case updateStorePromoRuleEcommerceRequestEndsAtZero(UpdateStorePromoRuleEcommerceRequestEndsAtZero)
    case updateStorePromoRuleEcommerceRequestEndsAtOne(UpdateStorePromoRuleEcommerceRequestEndsAtOne)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(UpdateStorePromoRuleEcommerceRequestEndsAtZero.self) {
            self = .updateStorePromoRuleEcommerceRequestEndsAtZero(value)
        } else if let value = try? container.decode(UpdateStorePromoRuleEcommerceRequestEndsAtOne.self) {
            self = .updateStorePromoRuleEcommerceRequestEndsAtOne(value)
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
        case .updateStorePromoRuleEcommerceRequestEndsAtZero(let value):
            try container.encode(value)
        case .updateStorePromoRuleEcommerceRequestEndsAtOne(let value):
            try container.encode(value)
        }
    }
}