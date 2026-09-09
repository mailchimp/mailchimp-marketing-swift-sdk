import Foundation

/// The [conditions of the segment](https://mailchimp.com/help/save-and-manage-segments/). Static and fuzzy segments don't have conditions.
public struct CreateSegmentListsRequestOptions: Codable, Hashable, Sendable {
    public let conditions: SegmentType?
    /// Match type.
    public let match: CreateSegmentListsRequestOptionsMatch?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        conditions: SegmentType? = nil,
        match: CreateSegmentListsRequestOptionsMatch? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.conditions = conditions
        self.match = match
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.conditions = try container.decodeIfPresent(SegmentType.self, forKey: .conditions)
        self.match = try container.decodeIfPresent(CreateSegmentListsRequestOptionsMatch.self, forKey: .match)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.conditions, forKey: .conditions)
        try container.encodeIfPresent(self.match, forKey: .match)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case conditions
        case match
    }
}