import Foundation

public enum UpdateStorePromoRuleEcommerceRequestStartsAt: Codable, Hashable, Sendable {
    case updateStorePromoRuleEcommerceRequestStartsAtZero(UpdateStorePromoRuleEcommerceRequestStartsAtZero)
    case updateStorePromoRuleEcommerceRequestStartsAtOne(UpdateStorePromoRuleEcommerceRequestStartsAtOne)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(UpdateStorePromoRuleEcommerceRequestStartsAtZero.self) {
            self = .updateStorePromoRuleEcommerceRequestStartsAtZero(value)
        } else if let value = try? container.decode(UpdateStorePromoRuleEcommerceRequestStartsAtOne.self) {
            self = .updateStorePromoRuleEcommerceRequestStartsAtOne(value)
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
        case .updateStorePromoRuleEcommerceRequestStartsAtZero(let value):
            try container.encode(value)
        case .updateStorePromoRuleEcommerceRequestStartsAtOne(let value):
            try container.encode(value)
        }
    }
}