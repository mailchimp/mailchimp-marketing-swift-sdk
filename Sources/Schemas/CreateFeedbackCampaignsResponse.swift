import Foundation

/// A specific feedback message from a specific campaign.
public struct CreateFeedbackCampaignsResponse: Codable, Hashable, Sendable {
    /// The block id for the editable block that the feedback addresses.
    public let blockId: Int?
    /// The status of feedback.
    public let isComplete: Bool?
    /// The content of the feedback.
    public let message: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        blockId: Int? = nil,
        isComplete: Bool? = nil,
        message: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.blockId = blockId
        self.isComplete = isComplete
        self.message = message
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.blockId = try container.decodeIfPresent(Int.self, forKey: .blockId)
        self.isComplete = try container.decodeIfPresent(Bool.self, forKey: .isComplete)
        self.message = try container.decode(String.self, forKey: .message)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.blockId, forKey: .blockId)
        try container.encodeIfPresent(self.isComplete, forKey: .isComplete)
        try container.encode(self.message, forKey: .message)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case blockId = "block_id"
        case isComplete = "is_complete"
        case message
    }
}