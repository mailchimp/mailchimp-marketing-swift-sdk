import Foundation

public struct LandingPageReportSignupTagsItem: Codable, Hashable, Sendable {
    /// The unique id for the tag.
    public let tagId: Int?
    /// The name of the tag.
    public let tagName: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        tagId: Int? = nil,
        tagName: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.tagId = tagId
        self.tagName = tagName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.tagId = try container.decodeIfPresent(Int.self, forKey: .tagId)
        self.tagName = try container.decodeIfPresent(String.self, forKey: .tagName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.tagId, forKey: .tagId)
        try container.encodeIfPresent(self.tagName, forKey: .tagName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case tagId = "tag_id"
        case tagName = "tag_name"
    }
}