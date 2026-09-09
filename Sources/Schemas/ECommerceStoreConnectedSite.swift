import Foundation

/// The Connected Site associated with the store.
public struct ECommerceStoreConnectedSite: Codable, Hashable, Sendable {
    /// The unique identifier for the connected site.
    public let siteForeignId: String?
    /// The script used to connect your site with Mailchimp.
    public let siteScript: ECommerceStoreConnectedSiteSiteScript?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        siteForeignId: String? = nil,
        siteScript: ECommerceStoreConnectedSiteSiteScript? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.siteForeignId = siteForeignId
        self.siteScript = siteScript
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.siteForeignId = try container.decodeIfPresent(String.self, forKey: .siteForeignId)
        self.siteScript = try container.decodeIfPresent(ECommerceStoreConnectedSiteSiteScript.self, forKey: .siteScript)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.siteForeignId, forKey: .siteForeignId)
        try container.encodeIfPresent(self.siteScript, forKey: .siteScript)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case siteForeignId = "site_foreign_id"
        case siteScript = "site_script"
    }
}