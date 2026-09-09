import Foundation

/// An authorized app.
public struct ListAuthorizedAppsResponseAppsItem: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListAuthorizedAppsResponseAppsItemLinksItem]?
    /// A short description of the application.
    public let description: String?
    /// The ID for the application.
    public let id: Int?
    /// The name of the application.
    public let name: String?
    /// An array of usernames for users who have linked the app.
    public let users: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListAuthorizedAppsResponseAppsItemLinksItem]? = nil,
        description: String? = nil,
        id: Int? = nil,
        name: String? = nil,
        users: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.description = description
        self.id = id
        self.name = name
        self.users = users
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListAuthorizedAppsResponseAppsItemLinksItem].self, forKey: .links)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.id = try container.decodeIfPresent(Int.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.users = try container.decodeIfPresent([String].self, forKey: .users)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.users, forKey: .users)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case description
        case id
        case name
        case users
    }
}