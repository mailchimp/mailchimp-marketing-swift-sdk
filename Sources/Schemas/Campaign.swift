import Foundation

/// A summary of an individual campaign's settings and content.
public struct Campaign: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [CampaignLinksItem]?
    public let abSplitOpts: AbTestingOptions?
    /// The link to the campaign's archive version.
    public let archiveUrl: String?
    /// How the campaign's content is put together ('template', 'drag_and_drop', 'html', 'url').
    public let contentType: String?
    /// The date and time the campaign was created in ISO 8601 format.
    public let createTime: Date?
    /// Updates on campaigns in the process of sending.
    public let deliveryStatus: CampaignDeliveryStatus?
    /// The total number of emails sent for this campaign.
    public let emailsSent: Int?
    /// A string that uniquely identifies this campaign.
    public let id: String?
    /// The original link to the campaign's archive version.
    public let longArchiveUrl: String?
    /// Determines if the campaign needs its blocks refreshed by opening the web-based campaign editor. Deprecated and will always return false.
    public let needsBlockRefresh: Bool?
    /// If this campaign is the child of another campaign, this identifies the parent campaign. For Example, for RSS or Automation children.
    public let parentCampaignId: String?
    /// List settings for the campaign.
    public let recipients: CampaignRecipients?
    /// For sent campaigns, a summary of opens and clicks.
    public let reportSummary: CampaignReportSummary?
    /// Determines if the campaign qualifies to be resent to non-openers.
    public let resendable: Bool?
    /// [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign.
    public let rssOpts: CampaignRssOpts?
    /// The date and time a campaign was sent in ISO 8601 format.
    public let sendTime: Date?
    /// The settings for your campaign, including subject, from name, reply-to address, and more.
    public let settings: CampaignSettings?
    /// The preview for the campaign, rendered by social networks like Facebook and Twitter. [Learn more](https://mailchimp.com/help/enable-and-customize-social-cards/).
    public let socialCard: CampaignSocialCard?
    /// The current status of the campaign.
    public let status: CampaignStatus?
    public let tracking: CampaignTrackingOptions?
    /// There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead.
    public let type: CampaignType
    /// The settings specific to A/B test campaigns.
    public let variateSettings: CampaignVariateSettings?
    /// The ID used in the Mailchimp web application. View this campaign in your Mailchimp account at `https://{dc}.admin.mailchimp.com/campaigns/show/?id={web_id}`.
    public let webId: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [CampaignLinksItem]? = nil,
        abSplitOpts: AbTestingOptions? = nil,
        archiveUrl: String? = nil,
        contentType: String? = nil,
        createTime: Date? = nil,
        deliveryStatus: CampaignDeliveryStatus? = nil,
        emailsSent: Int? = nil,
        id: String? = nil,
        longArchiveUrl: String? = nil,
        needsBlockRefresh: Bool? = nil,
        parentCampaignId: String? = nil,
        recipients: CampaignRecipients? = nil,
        reportSummary: CampaignReportSummary? = nil,
        resendable: Bool? = nil,
        rssOpts: CampaignRssOpts? = nil,
        sendTime: Date? = nil,
        settings: CampaignSettings? = nil,
        socialCard: CampaignSocialCard? = nil,
        status: CampaignStatus? = nil,
        tracking: CampaignTrackingOptions? = nil,
        type: CampaignType,
        variateSettings: CampaignVariateSettings? = nil,
        webId: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.abSplitOpts = abSplitOpts
        self.archiveUrl = archiveUrl
        self.contentType = contentType
        self.createTime = createTime
        self.deliveryStatus = deliveryStatus
        self.emailsSent = emailsSent
        self.id = id
        self.longArchiveUrl = longArchiveUrl
        self.needsBlockRefresh = needsBlockRefresh
        self.parentCampaignId = parentCampaignId
        self.recipients = recipients
        self.reportSummary = reportSummary
        self.resendable = resendable
        self.rssOpts = rssOpts
        self.sendTime = sendTime
        self.settings = settings
        self.socialCard = socialCard
        self.status = status
        self.tracking = tracking
        self.type = type
        self.variateSettings = variateSettings
        self.webId = webId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([CampaignLinksItem].self, forKey: .links)
        self.abSplitOpts = try container.decodeIfPresent(AbTestingOptions.self, forKey: .abSplitOpts)
        self.archiveUrl = try container.decodeIfPresent(String.self, forKey: .archiveUrl)
        self.contentType = try container.decodeIfPresent(String.self, forKey: .contentType)
        self.createTime = try container.decodeIfPresent(Date.self, forKey: .createTime)
        self.deliveryStatus = try container.decodeIfPresent(CampaignDeliveryStatus.self, forKey: .deliveryStatus)
        self.emailsSent = try container.decodeIfPresent(Int.self, forKey: .emailsSent)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.longArchiveUrl = try container.decodeIfPresent(String.self, forKey: .longArchiveUrl)
        self.needsBlockRefresh = try container.decodeIfPresent(Bool.self, forKey: .needsBlockRefresh)
        self.parentCampaignId = try container.decodeIfPresent(String.self, forKey: .parentCampaignId)
        self.recipients = try container.decodeIfPresent(CampaignRecipients.self, forKey: .recipients)
        self.reportSummary = try container.decodeIfPresent(CampaignReportSummary.self, forKey: .reportSummary)
        self.resendable = try container.decodeIfPresent(Bool.self, forKey: .resendable)
        self.rssOpts = try container.decodeIfPresent(CampaignRssOpts.self, forKey: .rssOpts)
        self.sendTime = try container.decodeIfPresent(Date.self, forKey: .sendTime)
        self.settings = try container.decodeIfPresent(CampaignSettings.self, forKey: .settings)
        self.socialCard = try container.decodeIfPresent(CampaignSocialCard.self, forKey: .socialCard)
        self.status = try container.decodeIfPresent(CampaignStatus.self, forKey: .status)
        self.tracking = try container.decodeIfPresent(CampaignTrackingOptions.self, forKey: .tracking)
        self.type = try container.decode(CampaignType.self, forKey: .type)
        self.variateSettings = try container.decodeIfPresent(CampaignVariateSettings.self, forKey: .variateSettings)
        self.webId = try container.decodeIfPresent(Int.self, forKey: .webId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.abSplitOpts, forKey: .abSplitOpts)
        try container.encodeIfPresent(self.archiveUrl, forKey: .archiveUrl)
        try container.encodeIfPresent(self.contentType, forKey: .contentType)
        try container.encodeIfPresent(self.createTime, forKey: .createTime)
        try container.encodeIfPresent(self.deliveryStatus, forKey: .deliveryStatus)
        try container.encodeIfPresent(self.emailsSent, forKey: .emailsSent)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.longArchiveUrl, forKey: .longArchiveUrl)
        try container.encodeIfPresent(self.needsBlockRefresh, forKey: .needsBlockRefresh)
        try container.encodeIfPresent(self.parentCampaignId, forKey: .parentCampaignId)
        try container.encodeIfPresent(self.recipients, forKey: .recipients)
        try container.encodeIfPresent(self.reportSummary, forKey: .reportSummary)
        try container.encodeIfPresent(self.resendable, forKey: .resendable)
        try container.encodeIfPresent(self.rssOpts, forKey: .rssOpts)
        try container.encodeIfPresent(self.sendTime, forKey: .sendTime)
        try container.encodeIfPresent(self.settings, forKey: .settings)
        try container.encodeIfPresent(self.socialCard, forKey: .socialCard)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.tracking, forKey: .tracking)
        try container.encode(self.type, forKey: .type)
        try container.encodeIfPresent(self.variateSettings, forKey: .variateSettings)
        try container.encodeIfPresent(self.webId, forKey: .webId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case abSplitOpts = "ab_split_opts"
        case archiveUrl = "archive_url"
        case contentType = "content_type"
        case createTime = "create_time"
        case deliveryStatus = "delivery_status"
        case emailsSent = "emails_sent"
        case id
        case longArchiveUrl = "long_archive_url"
        case needsBlockRefresh = "needs_block_refresh"
        case parentCampaignId = "parent_campaign_id"
        case recipients
        case reportSummary = "report_summary"
        case resendable
        case rssOpts = "rss_opts"
        case sendTime = "send_time"
        case settings
        case socialCard = "social_card"
        case status
        case tracking
        case type
        case variateSettings = "variate_settings"
        case webId = "web_id"
    }
}