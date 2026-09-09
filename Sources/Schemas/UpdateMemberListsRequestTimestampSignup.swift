import Foundation

public enum UpdateMemberListsRequestTimestampSignup: Codable, Hashable, Sendable {
    case string(String)
    case updateMemberListsRequestTimestampSignupOne(UpdateMemberListsRequestTimestampSignupOne)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(String.self) {
            self = .string(value)
        } else if let value = try? container.decode(UpdateMemberListsRequestTimestampSignupOne.self) {
            self = .updateMemberListsRequestTimestampSignupOne(value)
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
        case .string(let value):
            try container.encode(value)
        case .updateMemberListsRequestTimestampSignupOne(let value):
            try container.encode(value)
        }
    }
}