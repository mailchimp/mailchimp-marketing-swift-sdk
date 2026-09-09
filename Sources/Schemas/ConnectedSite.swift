import Foundation

/// Information about a specific connected site.
public struct ConnectedSite: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ConnectedSiteLinksItem]?
    /// The date and time the connected site was created in ISO 8601 format.
    public let createdAt: Date?
    /// The connected site domain.
    public let domain: String?
    /// The unique identifier for the site.
    public let foreignId: String?
    /// The platform of the connected site.
    public let platform: String?
    /// The script used to connect your site with Mailchimp.
    public let siteScript: ConnectedSiteSiteScript?
    /// The unique identifier for the ecommerce store that's associated with the connected site (if any). The store_id for a specific connected site can't change.
    public let storeId: String?
    /// The date and time the connected site was last updated in ISO 8601 format.
    public let updatedAt: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ConnectedSiteLinksItem]? = nil,
        createdAt: Date? = nil,
        domain: String? = nil,
        foreignId: String? = nil,
        platform: String? = nil,
        siteScript: ConnectedSiteSiteScript? = nil,
        storeId: String? = nil,
        updatedAt: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.createdAt = createdAt
        self.domain = domain
        self.foreignId = foreignId
        self.platform = platform
        self.siteScript = siteScript
        self.storeId = storeId
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ConnectedSiteLinksItem].self, forKey: .links)
        self.createdAt = try container.decodeIfPresent(Date.self, forKey: .createdAt)
        self.domain = try container.decodeIfPresent(String.self, forKey: .domain)
        self.foreignId = try container.decodeIfPresent(String.self, forKey: .foreignId)
        self.platform = try container.decodeIfPresent(String.self, forKey: .platform)
        self.siteScript = try container.decodeIfPresent(ConnectedSiteSiteScript.self, forKey: .siteScript)
        self.storeId = try container.decodeIfPresent(String.self, forKey: .storeId)
        self.updatedAt = try container.decodeIfPresent(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.domain, forKey: .domain)
        try container.encodeIfPresent(self.foreignId, forKey: .foreignId)
        try container.encodeIfPresent(self.platform, forKey: .platform)
        try container.encodeIfPresent(self.siteScript, forKey: .siteScript)
        try container.encodeIfPresent(self.storeId, forKey: .storeId)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case createdAt = "created_at"
        case domain
        case foreignId = "foreign_id"
        case platform
        case siteScript = "site_script"
        case storeId = "store_id"
        case updatedAt = "updated_at"
    }
}