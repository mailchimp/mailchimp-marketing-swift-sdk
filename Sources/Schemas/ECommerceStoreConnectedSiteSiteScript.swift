import Foundation

/// The script used to connect your site with Mailchimp.
public struct ECommerceStoreConnectedSiteSiteScript: Codable, Hashable, Sendable {
    /// A pre-built script that you can copy-and-paste into your site to integrate it with Mailchimp.
    public let fragment: String?
    /// The URL used for any integrations that offer built-in support for connected sites.
    public let url: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fragment: String? = nil,
        url: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fragment = fragment
        self.url = url
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fragment = try container.decodeIfPresent(String.self, forKey: .fragment)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.fragment, forKey: .fragment)
        try container.encodeIfPresent(self.url, forKey: .url)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fragment
        case url
    }
}