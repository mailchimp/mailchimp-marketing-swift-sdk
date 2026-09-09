import Foundation

public struct ListMemberTagsListsResponseTagsItem: Codable, Hashable, Sendable {
    /// The date and time the tag was added to the list member in ISO 8601 format.
    public let dateAdded: Date?
    /// The unique id for the tag.
    public let id: Int?
    /// The name of the tag.
    public let name: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dateAdded: Date? = nil,
        id: Int? = nil,
        name: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.dateAdded = dateAdded
        self.id = id
        self.name = name
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dateAdded = try container.decodeIfPresent(Date.self, forKey: .dateAdded)
        self.id = try container.decodeIfPresent(Int.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.dateAdded, forKey: .dateAdded)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.name, forKey: .name)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case dateAdded = "date_added"
        case id
        case name
    }
}