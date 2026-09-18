import Foundation

/// This object's keys are merge tags (like FNAME). It's values are the values to be added to the merge field.
public enum CreateAudienceContactRequestMergeFieldsValue: Codable, Hashable, Sendable {
    case createAudienceContactRequestMergeFieldsValueAddr1(CreateAudienceContactRequestMergeFieldsValueAddr1)
    case string(String)
    case double(Double)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(CreateAudienceContactRequestMergeFieldsValueAddr1.self) {
            self = .createAudienceContactRequestMergeFieldsValueAddr1(value)
        } else if let value = try? container.decode(String.self) {
            self = .string(value)
        } else if let value = try? container.decode(Double.self) {
            self = .double(value)
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
        case .createAudienceContactRequestMergeFieldsValueAddr1(let value):
            try container.encode(value)
        case .string(let value):
            try container.encode(value)
        case .double(let value):
            try container.encode(value)
        }
    }
}