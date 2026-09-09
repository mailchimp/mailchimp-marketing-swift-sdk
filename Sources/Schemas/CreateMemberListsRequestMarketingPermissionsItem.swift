import Foundation

/// A single marketing permission a subscriber has either opted-in to or opted-out of.
public struct CreateMemberListsRequestMarketingPermissionsItem: Codable, Hashable, Sendable {
    /// If the subscriber has opted-in to the marketing permission.
    public let enabled: Bool?
    /// The id for the marketing permission on the list
    public let marketingPermissionId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        enabled: Bool? = nil,
        marketingPermissionId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.enabled = enabled
        self.marketingPermissionId = marketingPermissionId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.enabled = try container.decodeIfPresent(Bool.self, forKey: .enabled)
        self.marketingPermissionId = try container.decodeIfPresent(String.self, forKey: .marketingPermissionId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.enabled, forKey: .enabled)
        try container.encodeIfPresent(self.marketingPermissionId, forKey: .marketingPermissionId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case marketingPermissionId = "marketing_permission_id"
    }
}