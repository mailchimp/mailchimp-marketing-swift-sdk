import Foundation

public enum UpdateCampaignsRequestVariateSettingsSendTimesItem: Codable, Hashable, Sendable {
    case date(Date)
    case string(String)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Date.self) {
            self = .date(value)
        } else if let value = try? container.decode(String.self) {
            self = .string(value)
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
        case .string(let value):
            try container.encode(value)
        }
    }
}