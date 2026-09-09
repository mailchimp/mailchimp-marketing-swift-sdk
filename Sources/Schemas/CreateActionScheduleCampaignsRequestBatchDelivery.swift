import Foundation

/// Choose whether the campaign should use [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/). Cannot be set to `true` for campaigns using [Timewarp](https://mailchimp.com/help/use-timewarp/).
public struct CreateActionScheduleCampaignsRequestBatchDelivery: Codable, Hashable, Sendable {
    /// The number of batches for the campaign send.
    public let batchCount: Int
    /// The delay, in minutes, between batches.
    public let batchDelay: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        batchCount: Int,
        batchDelay: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.batchCount = batchCount
        self.batchDelay = batchDelay
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.batchCount = try container.decode(Int.self, forKey: .batchCount)
        self.batchDelay = try container.decode(Int.self, forKey: .batchDelay)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.batchCount, forKey: .batchCount)
        try container.encode(self.batchDelay, forKey: .batchDelay)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case batchCount = "batch_count"
        case batchDelay = "batch_delay"
    }
}