import Foundation

public enum CreateStorePromoRuleEcommerceRequestStartsAt: Codable, Hashable, Sendable {
    case createStorePromoRuleEcommerceRequestStartsAtZero(CreateStorePromoRuleEcommerceRequestStartsAtZero)
    case createStorePromoRuleEcommerceRequestStartsAtOne(CreateStorePromoRuleEcommerceRequestStartsAtOne)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(CreateStorePromoRuleEcommerceRequestStartsAtZero.self) {
            self = .createStorePromoRuleEcommerceRequestStartsAtZero(value)
        } else if let value = try? container.decode(CreateStorePromoRuleEcommerceRequestStartsAtOne.self) {
            self = .createStorePromoRuleEcommerceRequestStartsAtOne(value)
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
        case .createStorePromoRuleEcommerceRequestStartsAtZero(let value):
            try container.encode(value)
        case .createStorePromoRuleEcommerceRequestStartsAtOne(let value):
            try container.encode(value)
        }
    }
}