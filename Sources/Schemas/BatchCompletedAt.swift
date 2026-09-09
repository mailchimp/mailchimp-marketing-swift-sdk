import Foundation

/// The date and time when all operations in the batch request completed in ISO 8601 format.
public enum BatchCompletedAt: Codable, Hashable, Sendable {
    case date(Date)
    case batchCompletedAtOne(BatchCompletedAtOne)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Date.self) {
            self = .date(value)
        } else if let value = try? container.decode(BatchCompletedAtOne.self) {
            self = .batchCompletedAtOne(value)
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
        case .batchCompletedAtOne(let value):
            try container.encode(value)
        }
    }
}