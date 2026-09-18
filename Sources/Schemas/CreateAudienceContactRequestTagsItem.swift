import Foundation

public enum CreateAudienceContactRequestTagsItem: Codable, Hashable, Sendable {
    case string(String)
    case createAudienceContactRequestTagsItemName(CreateAudienceContactRequestTagsItemName)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(String.self) {
            self = .string(value)
        } else if let value = try? container.decode(CreateAudienceContactRequestTagsItemName.self) {
            self = .createAudienceContactRequestTagsItemName(value)
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
        case .createAudienceContactRequestTagsItemName(let value):
            try container.encode(value)
        }
    }
}