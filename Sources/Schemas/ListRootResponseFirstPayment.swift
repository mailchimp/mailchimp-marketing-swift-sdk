import Foundation

/// Date of first payment for monthly plans.
public enum ListRootResponseFirstPayment: Codable, Hashable, Sendable {
    case date(Date)
    case listRootResponseFirstPaymentOne(ListRootResponseFirstPaymentOne)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Date.self) {
            self = .date(value)
        } else if let value = try? container.decode(ListRootResponseFirstPaymentOne.self) {
            self = .listRootResponseFirstPaymentOne(value)
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
        case .date(let value):
            try container.encode(value)
        case .listRootResponseFirstPaymentOne(let value):
            try container.encode(value)
        }
    }
}