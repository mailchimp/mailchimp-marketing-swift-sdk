import Foundation

/// The email client.
public struct ListClientsListsResponseClientsItem: Codable, Hashable, Sendable {
    /// The name of the email client.
    public let client: String?
    /// The number of subscribed members who used this email client.
    public let members: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        client: String? = nil,
        members: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.client = client
        self.members = members
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.client = try container.decodeIfPresent(String.self, forKey: .client)
        self.members = try container.decodeIfPresent(Int.self, forKey: .members)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.client, forKey: .client)
        try container.encodeIfPresent(self.members, forKey: .members)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case client
        case members
    }
}