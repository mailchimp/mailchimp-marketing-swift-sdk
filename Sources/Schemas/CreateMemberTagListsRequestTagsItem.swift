import Foundation

/// Add or remove tags on a member by declaring a tag either active or inactive on a member.
public struct CreateMemberTagListsRequestTagsItem: Codable, Hashable, Sendable {
    /// The name of the tag.
    public let name: String
    /// The status for the tag on the member, pass in active to add a tag or inactive to remove it.
    public let status: CreateMemberTagListsRequestTagsItemStatus
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        status: CreateMemberTagListsRequestTagsItemStatus,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.status = try container.decode(CreateMemberTagListsRequestTagsItemStatus.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case status
    }
}