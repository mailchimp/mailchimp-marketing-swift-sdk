import Foundation

/// Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed.
public enum BatchSubscribeOrUnsubscribeListsRequestMembersItem: Codable, Hashable, Sendable {
    case jsonValue(JSONValue)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(JSONValue.self) {
            self = .jsonValue(value)
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
        case .jsonValue(let value):
            try container.encode(value)
        }
    }
}