import Foundation

public struct FacebookAds: Codable, Hashable, Sendable {
    /// The date and time the outreach was canceled in ISO 8601 format.
    public let canceledAt: Date?
    /// The date and time the outreach was created in ISO 8601 format.
    public let createTime: Date?
    /// If this outreach targets a segment of your audience.
    public let hasSegment: Bool?
    /// Unique ID of an Outreach.
    public let id: String?
    /// Title or name of an Outreach.
    public let name: String?
    /// The date and time the outreach was (or will be) published in ISO 8601 format.
    public let publishedTime: Date?
    /// High level audience information for who the outreach targets.
    public let recipients: FacebookAdRecipients?
    /// High level reporting stats for an outreach.
    public let reportSummary: FacebookAdReportSummary?
    /// Outreach report availability. Note: This property is hotly debated in what it _should_ convey. See [MCP-1371](https://jira.mailchimp.com/browse/MCP-1371) for more context.
    public let showReport: Bool?
    /// The date and time the outreach was started in ISO 8601 format.
    public let startTime: Date?
    /// The status of this outreach.
    public let status: FacebookAdStatus?
    /// The type of outreach this object is.
    public let type: FacebookAdType?
    /// The date and time the outreach was last updated in ISO 8601 format.
    public let updatedAt: Date?
    /// The ID used in the Mailchimp web application. For example, for a `regular` outreach, you can view this campaign in your Mailchimp account at `https://{dc}.admin.mailchimp.com/campaigns/show/?id={web_id}`.
    public let webId: Int?
    public let emailSourceName: String?
    /// The date and time the ad was ended in ISO 8601 format.
    public let endTime: Date?
    /// If the ad has a problem and needs attention.
    public let needsAttention: Bool?
    /// The date and time the ad was paused in ISO 8601 format.
    public let pausedAt: Date?
    /// The URL of the thumbnail for this outreach.
    public let thumbnail: String?
    public let wasCanceledByFacebook: Bool?
    /// Audience settings
    public let audience: FacebookAdsAudience?
    public let budget: FacebookAdsBudget?
    /// Channel settings
    public let channel: FacebookAdsChannel?
    public let content: FacebookAdsContent?
    /// Check if this ad is connected to a facebook page
    public let feedback: FacebookAdsFeedback?
    /// Check if this ad has audience setup
    public let hasAudience: Bool?
    /// Check if this ad has content
    public let hasContent: Bool?
    /// Check if this ad is connected to a facebook page
    public let isConnected: Bool?
    /// Connected Site
    public let site: FacebookAdsSite?
    /// A list of link types and descriptions for the API schema documents.
    public let links: [FacebookAdsLinksItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        canceledAt: Date? = nil,
        createTime: Date? = nil,
        hasSegment: Bool? = nil,
        id: String? = nil,
        name: String? = nil,
        publishedTime: Date? = nil,
        recipients: FacebookAdRecipients? = nil,
        reportSummary: FacebookAdReportSummary? = nil,
        showReport: Bool? = nil,
        startTime: Date? = nil,
        status: FacebookAdStatus? = nil,
        type: FacebookAdType? = nil,
        updatedAt: Date? = nil,
        webId: Int? = nil,
        emailSourceName: String? = nil,
        endTime: Date? = nil,
        needsAttention: Bool? = nil,
        pausedAt: Date? = nil,
        thumbnail: String? = nil,
        wasCanceledByFacebook: Bool? = nil,
        audience: FacebookAdsAudience? = nil,
        budget: FacebookAdsBudget? = nil,
        channel: FacebookAdsChannel? = nil,
        content: FacebookAdsContent? = nil,
        feedback: FacebookAdsFeedback? = nil,
        hasAudience: Bool? = nil,
        hasContent: Bool? = nil,
        isConnected: Bool? = nil,
        site: FacebookAdsSite? = nil,
        links: [FacebookAdsLinksItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.canceledAt = canceledAt
        self.createTime = createTime
        self.hasSegment = hasSegment
        self.id = id
        self.name = name
        self.publishedTime = publishedTime
        self.recipients = recipients
        self.reportSummary = reportSummary
        self.showReport = showReport
        self.startTime = startTime
        self.status = status
        self.type = type
        self.updatedAt = updatedAt
        self.webId = webId
        self.emailSourceName = emailSourceName
        self.endTime = endTime
        self.needsAttention = needsAttention
        self.pausedAt = pausedAt
        self.thumbnail = thumbnail
        self.wasCanceledByFacebook = wasCanceledByFacebook
        self.audience = audience
        self.budget = budget
        self.channel = channel
        self.content = content
        self.feedback = feedback
        self.hasAudience = hasAudience
        self.hasContent = hasContent
        self.isConnected = isConnected
        self.site = site
        self.links = links
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.canceledAt = try container.decodeIfPresent(Date.self, forKey: .canceledAt)
        self.createTime = try container.decodeIfPresent(Date.self, forKey: .createTime)
        self.hasSegment = try container.decodeIfPresent(Bool.self, forKey: .hasSegment)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.publishedTime = try container.decodeIfPresent(Date.self, forKey: .publishedTime)
        self.recipients = try container.decodeIfPresent(FacebookAdRecipients.self, forKey: .recipients)
        self.reportSummary = try container.decodeIfPresent(FacebookAdReportSummary.self, forKey: .reportSummary)
        self.showReport = try container.decodeIfPresent(Bool.self, forKey: .showReport)
        self.startTime = try container.decodeIfPresent(Date.self, forKey: .startTime)
        self.status = try container.decodeIfPresent(FacebookAdStatus.self, forKey: .status)
        self.type = try container.decodeIfPresent(FacebookAdType.self, forKey: .type)
        self.updatedAt = try container.decodeIfPresent(Date.self, forKey: .updatedAt)
        self.webId = try container.decodeIfPresent(Int.self, forKey: .webId)
        self.emailSourceName = try container.decodeIfPresent(String.self, forKey: .emailSourceName)
        self.endTime = try container.decodeIfPresent(Date.self, forKey: .endTime)
        self.needsAttention = try container.decodeIfPresent(Bool.self, forKey: .needsAttention)
        self.pausedAt = try container.decodeIfPresent(Date.self, forKey: .pausedAt)
        self.thumbnail = try container.decodeIfPresent(String.self, forKey: .thumbnail)
        self.wasCanceledByFacebook = try container.decodeIfPresent(Bool.self, forKey: .wasCanceledByFacebook)
        self.audience = try container.decodeIfPresent(FacebookAdsAudience.self, forKey: .audience)
        self.budget = try container.decodeIfPresent(FacebookAdsBudget.self, forKey: .budget)
        self.channel = try container.decodeIfPresent(FacebookAdsChannel.self, forKey: .channel)
        self.content = try container.decodeIfPresent(FacebookAdsContent.self, forKey: .content)
        self.feedback = try container.decodeIfPresent(FacebookAdsFeedback.self, forKey: .feedback)
        self.hasAudience = try container.decodeIfPresent(Bool.self, forKey: .hasAudience)
        self.hasContent = try container.decodeIfPresent(Bool.self, forKey: .hasContent)
        self.isConnected = try container.decodeIfPresent(Bool.self, forKey: .isConnected)
        self.site = try container.decodeIfPresent(FacebookAdsSite.self, forKey: .site)
        self.links = try container.decodeIfPresent([FacebookAdsLinksItem].self, forKey: .links)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.canceledAt, forKey: .canceledAt)
        try container.encodeIfPresent(self.createTime, forKey: .createTime)
        try container.encodeIfPresent(self.hasSegment, forKey: .hasSegment)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.publishedTime, forKey: .publishedTime)
        try container.encodeIfPresent(self.recipients, forKey: .recipients)
        try container.encodeIfPresent(self.reportSummary, forKey: .reportSummary)
        try container.encodeIfPresent(self.showReport, forKey: .showReport)
        try container.encodeIfPresent(self.startTime, forKey: .startTime)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(self.webId, forKey: .webId)
        try container.encodeIfPresent(self.emailSourceName, forKey: .emailSourceName)
        try container.encodeIfPresent(self.endTime, forKey: .endTime)
        try container.encodeIfPresent(self.needsAttention, forKey: .needsAttention)
        try container.encodeIfPresent(self.pausedAt, forKey: .pausedAt)
        try container.encodeIfPresent(self.thumbnail, forKey: .thumbnail)
        try container.encodeIfPresent(self.wasCanceledByFacebook, forKey: .wasCanceledByFacebook)
        try container.encodeIfPresent(self.audience, forKey: .audience)
        try container.encodeIfPresent(self.budget, forKey: .budget)
        try container.encodeIfPresent(self.channel, forKey: .channel)
        try container.encodeIfPresent(self.content, forKey: .content)
        try container.encodeIfPresent(self.feedback, forKey: .feedback)
        try container.encodeIfPresent(self.hasAudience, forKey: .hasAudience)
        try container.encodeIfPresent(self.hasContent, forKey: .hasContent)
        try container.encodeIfPresent(self.isConnected, forKey: .isConnected)
        try container.encodeIfPresent(self.site, forKey: .site)
        try container.encodeIfPresent(self.links, forKey: .links)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case canceledAt = "canceled_at"
        case createTime = "create_time"
        case hasSegment = "has_segment"
        case id
        case name
        case publishedTime = "published_time"
        case recipients
        case reportSummary = "report_summary"
        case showReport = "show_report"
        case startTime = "start_time"
        case status
        case type
        case updatedAt = "updated_at"
        case webId = "web_id"
        case emailSourceName = "email_source_name"
        case endTime = "end_time"
        case needsAttention = "needs_attention"
        case pausedAt = "paused_at"
        case thumbnail
        case wasCanceledByFacebook = "was_canceled_by_facebook"
        case audience
        case budget
        case channel
        case content
        case feedback
        case hasAudience = "has_audience"
        case hasContent = "has_content"
        case isConnected = "is_connected"
        case site
        case links = "_links"
    }
}