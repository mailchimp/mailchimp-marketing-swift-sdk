import Foundation

/// The tracking settings applied to this landing page.
public struct LandingPageTracking: Codable, Hashable, Sendable {
    /// Google offers restricted data processing in connection with the California Consumer Privacy Act (CCPA) to restrict how Google uses certain identifiers and other data processed in the provision of its services. You can learn more about Google's restricted data processing within Google Ads [here](https://privacy.google.com/businesses/rdp/).
    public let enableRestrictedDataProcessing: Bool?
    /// Use cookies to track unique visitors and calculate overall conversion rate. Learn more [here](https://mailchimp.com/help/use-track-mailchimp/).
    public let trackWithMailchimp: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        enableRestrictedDataProcessing: Bool? = nil,
        trackWithMailchimp: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.enableRestrictedDataProcessing = enableRestrictedDataProcessing
        self.trackWithMailchimp = trackWithMailchimp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.enableRestrictedDataProcessing = try container.decodeIfPresent(Bool.self, forKey: .enableRestrictedDataProcessing)
        self.trackWithMailchimp = try container.decodeIfPresent(Bool.self, forKey: .trackWithMailchimp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.enableRestrictedDataProcessing, forKey: .enableRestrictedDataProcessing)
        try container.encodeIfPresent(self.trackWithMailchimp, forKey: .trackWithMailchimp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case enableRestrictedDataProcessing = "enable_restricted_data_processing"
        case trackWithMailchimp = "track_with_mailchimp"
    }
}