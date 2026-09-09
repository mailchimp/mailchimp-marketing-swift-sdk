import Foundation

/// The url and password for the [VIP report](https://mailchimp.com/help/share-a-campaign-report/).
public struct CampaignReportShareReport: Codable, Hashable, Sendable {
    /// If password protected, the password for the VIP report.
    public let sharePassword: String?
    /// The URL for the VIP report.
    public let shareUrl: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        sharePassword: String? = nil,
        shareUrl: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.sharePassword = sharePassword
        self.shareUrl = shareUrl
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sharePassword = try container.decodeIfPresent(String.self, forKey: .sharePassword)
        self.shareUrl = try container.decodeIfPresent(String.self, forKey: .shareUrl)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.sharePassword, forKey: .sharePassword)
        try container.encodeIfPresent(self.shareUrl, forKey: .shareUrl)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case sharePassword = "share_password"
        case shareUrl = "share_url"
    }
}