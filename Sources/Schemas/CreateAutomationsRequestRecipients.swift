import Foundation

/// List settings for the Automation.
public struct CreateAutomationsRequestRecipients: Codable, Hashable, Sendable {
    /// The id of the List.
    public let listId: String?
    /// The id of the store.
    public let storeId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        listId: String? = nil,
        storeId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.listId = listId
        self.storeId = storeId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.storeId = try container.decodeIfPresent(String.self, forKey: .storeId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.storeId, forKey: .storeId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case listId = "list_id"
        case storeId = "store_id"
    }
}