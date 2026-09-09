import Foundation

/// The tracking options for a campaign.
public struct AutomationWorkflowEmailTracking: Codable, Hashable, Sendable {
    /// Deprecated
    public let capsule: AutomationWorkflowEmailTrackingCapsule?
    /// The custom slug for [Click Tale](https://mailchimp.com/help/additional-tracking-options-for-campaigns/) tracking (max of 50 bytes).
    public let clicktale: String?
    /// Whether to enable e-commerce tracking.
    public let ecomm360: Bool?
    /// Deprecated
    public let goalTracking: Bool?
    /// The custom slug for [Google Analytics](https://mailchimp.com/help/integrate-google-analytics-with-mailchimp/) tracking (max of 50 bytes).
    public let googleAnalytics: String?
    /// Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the HTML version of the campaign. Defaults to `true`.
    public let htmlClicks: Bool?
    /// Whether to [track opens](https://mailchimp.com/help/about-open-tracking/). Defaults to `true`.
    public let opens: Bool?
    /// Deprecated
    public let salesforce: AutomationWorkflowEmailTrackingSalesforce?
    /// Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the plain-text version of the campaign. Defaults to `true`.
    public let textClicks: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        capsule: AutomationWorkflowEmailTrackingCapsule? = nil,
        clicktale: String? = nil,
        ecomm360: Bool? = nil,
        goalTracking: Bool? = nil,
        googleAnalytics: String? = nil,
        htmlClicks: Bool? = nil,
        opens: Bool? = nil,
        salesforce: AutomationWorkflowEmailTrackingSalesforce? = nil,
        textClicks: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.capsule = capsule
        self.clicktale = clicktale
        self.ecomm360 = ecomm360
        self.goalTracking = goalTracking
        self.googleAnalytics = googleAnalytics
        self.htmlClicks = htmlClicks
        self.opens = opens
        self.salesforce = salesforce
        self.textClicks = textClicks
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.capsule = try container.decodeIfPresent(AutomationWorkflowEmailTrackingCapsule.self, forKey: .capsule)
        self.clicktale = try container.decodeIfPresent(String.self, forKey: .clicktale)
        self.ecomm360 = try container.decodeIfPresent(Bool.self, forKey: .ecomm360)
        self.goalTracking = try container.decodeIfPresent(Bool.self, forKey: .goalTracking)
        self.googleAnalytics = try container.decodeIfPresent(String.self, forKey: .googleAnalytics)
        self.htmlClicks = try container.decodeIfPresent(Bool.self, forKey: .htmlClicks)
        self.opens = try container.decodeIfPresent(Bool.self, forKey: .opens)
        self.salesforce = try container.decodeIfPresent(AutomationWorkflowEmailTrackingSalesforce.self, forKey: .salesforce)
        self.textClicks = try container.decodeIfPresent(Bool.self, forKey: .textClicks)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.capsule, forKey: .capsule)
        try container.encodeIfPresent(self.clicktale, forKey: .clicktale)
        try container.encodeIfPresent(self.ecomm360, forKey: .ecomm360)
        try container.encodeIfPresent(self.goalTracking, forKey: .goalTracking)
        try container.encodeIfPresent(self.googleAnalytics, forKey: .googleAnalytics)
        try container.encodeIfPresent(self.htmlClicks, forKey: .htmlClicks)
        try container.encodeIfPresent(self.opens, forKey: .opens)
        try container.encodeIfPresent(self.salesforce, forKey: .salesforce)
        try container.encodeIfPresent(self.textClicks, forKey: .textClicks)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case capsule
        case clicktale
        case ecomm360
        case goalTracking = "goal_tracking"
        case googleAnalytics = "google_analytics"
        case htmlClicks = "html_clicks"
        case opens
        case salesforce
        case textClicks = "text_clicks"
    }
}