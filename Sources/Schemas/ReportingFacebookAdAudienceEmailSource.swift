import Foundation

public struct ReportingFacebookAdAudienceEmailSource: Codable, Hashable, Sendable {
    /// Is the source reference a segment
    public let isSegment: Bool?
    /// Associated list name to the source
    public let listName: String?
    /// Email source name
    public let name: String?
    /// Segment type if this source is tied to a segment
    public let segmentType: String?
    /// Type of the email source
    public let type: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        isSegment: Bool? = nil,
        listName: String? = nil,
        name: String? = nil,
        segmentType: String? = nil,
        type: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.isSegment = isSegment
        self.listName = listName
        self.name = name
        self.segmentType = segmentType
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.isSegment = try container.decodeIfPresent(Bool.self, forKey: .isSegment)
        self.listName = try container.decodeIfPresent(String.self, forKey: .listName)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.segmentType = try container.decodeIfPresent(String.self, forKey: .segmentType)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.isSegment, forKey: .isSegment)
        try container.encodeIfPresent(self.listName, forKey: .listName)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.segmentType, forKey: .segmentType)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case isSegment = "is_segment"
        case listName = "list_name"
        case name
        case segmentType = "segment_type"
        case type
    }
}