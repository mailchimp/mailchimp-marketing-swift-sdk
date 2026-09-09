import Foundation

public struct ListSendChecklistCampaignsResponseItemsItem: Codable, Hashable, Sendable {
    /// Details about the specific feedback item.
    public let details: String?
    /// The heading for the specific item.
    public let heading: String?
    /// The ID for the specific item.
    public let id: Int?
    /// The item type.
    public let type: ListSendChecklistCampaignsResponseItemsItemType?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        details: String? = nil,
        heading: String? = nil,
        id: Int? = nil,
        type: ListSendChecklistCampaignsResponseItemsItemType? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.details = details
        self.heading = heading
        self.id = id
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.details = try container.decodeIfPresent(String.self, forKey: .details)
        self.heading = try container.decodeIfPresent(String.self, forKey: .heading)
        self.id = try container.decodeIfPresent(Int.self, forKey: .id)
        self.type = try container.decodeIfPresent(ListSendChecklistCampaignsResponseItemsItemType.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.details, forKey: .details)
        try container.encodeIfPresent(self.heading, forKey: .heading)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case details
        case heading
        case id
        case type
    }
}