import Foundation

/// Report details about a sent campaign.
public struct CampaignReport: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [CampaignReportLinksItem]?
    /// General stats about different groups of an A/B Split campaign. Does not return information about Multivariate Campaigns.
    public let abSplit: CampaignReportAbSplit?
    /// The number of abuse reports generated for this campaign.
    public let abuseReports: Int?
    /// An object describing the bounce summary for the campaign.
    public let bounces: CampaignReportBounces?
    /// The title of the campaign.
    public let campaignTitle: String?
    /// An object describing the click activity for the campaign.
    public let clicks: CampaignReportClicks?
    /// Updates on campaigns in the process of sending.
    public let deliveryStatus: CampaignReportDeliveryStatus?
    /// E-Commerce stats for a campaign.
    public let ecommerce: CampaignReportEcommerce?
    /// The total number of emails sent for this campaign.
    public let emailsSent: Int?
    /// An object describing campaign engagement on Facebook.
    public let facebookLikes: CampaignReportFacebookLikes?
    /// An object describing the forwards and forward activity for the campaign.
    public let forwards: CampaignReportForwards?
    /// A string that uniquely identifies this campaign.
    public let id: String?
    /// The average campaign statistics for your industry.
    public let industryStats: CampaignReportIndustryStats?
    /// The unique list id.
    public let listId: String?
    /// The status of the list used, namely if it's deleted or disabled.
    public let listIsActive: Bool?
    /// The name of the list.
    public let listName: String?
    /// The average campaign statistics for your list. This won't be present if we haven't calculated it yet for this list.
    public let listStats: CampaignReportListStats?
    /// An object describing the open activity for the campaign.
    public let opens: CampaignReportOpens?
    /// The preview text for the campaign.
    public let previewText: String?
    /// For RSS campaigns, the date and time of the last send in ISO 8601 format.
    public let rssLastSend: Date?
    /// The date and time a campaign was sent in ISO 8601 format.
    public let sendTime: Date?
    /// The url and password for the [VIP report](https://mailchimp.com/help/share-a-campaign-report/).
    public let shareReport: CampaignReportShareReport?
    /// The subject line for the campaign.
    public let subjectLine: String?
    /// An hourly breakdown of the performance of the campaign over the first 24 hours.
    public let timeseries: [CampaignReportTimeseriesItem]?
    /// An hourly breakdown of sends, opens, and clicks if a campaign is sent using timewarp.
    public let timewarp: [CampaignReportTimewarpItem]?
    /// The type of campaign (regular, plain-text, ab_split, rss, automation, variate, or auto).
    public let type: String?
    /// The total number of unsubscribed members for this campaign.
    public let unsubscribed: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [CampaignReportLinksItem]? = nil,
        abSplit: CampaignReportAbSplit? = nil,
        abuseReports: Int? = nil,
        bounces: CampaignReportBounces? = nil,
        campaignTitle: String? = nil,
        clicks: CampaignReportClicks? = nil,
        deliveryStatus: CampaignReportDeliveryStatus? = nil,
        ecommerce: CampaignReportEcommerce? = nil,
        emailsSent: Int? = nil,
        facebookLikes: CampaignReportFacebookLikes? = nil,
        forwards: CampaignReportForwards? = nil,
        id: String? = nil,
        industryStats: CampaignReportIndustryStats? = nil,
        listId: String? = nil,
        listIsActive: Bool? = nil,
        listName: String? = nil,
        listStats: CampaignReportListStats? = nil,
        opens: CampaignReportOpens? = nil,
        previewText: String? = nil,
        rssLastSend: Date? = nil,
        sendTime: Date? = nil,
        shareReport: CampaignReportShareReport? = nil,
        subjectLine: String? = nil,
        timeseries: [CampaignReportTimeseriesItem]? = nil,
        timewarp: [CampaignReportTimewarpItem]? = nil,
        type: String? = nil,
        unsubscribed: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.abSplit = abSplit
        self.abuseReports = abuseReports
        self.bounces = bounces
        self.campaignTitle = campaignTitle
        self.clicks = clicks
        self.deliveryStatus = deliveryStatus
        self.ecommerce = ecommerce
        self.emailsSent = emailsSent
        self.facebookLikes = facebookLikes
        self.forwards = forwards
        self.id = id
        self.industryStats = industryStats
        self.listId = listId
        self.listIsActive = listIsActive
        self.listName = listName
        self.listStats = listStats
        self.opens = opens
        self.previewText = previewText
        self.rssLastSend = rssLastSend
        self.sendTime = sendTime
        self.shareReport = shareReport
        self.subjectLine = subjectLine
        self.timeseries = timeseries
        self.timewarp = timewarp
        self.type = type
        self.unsubscribed = unsubscribed
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([CampaignReportLinksItem].self, forKey: .links)
        self.abSplit = try container.decodeIfPresent(CampaignReportAbSplit.self, forKey: .abSplit)
        self.abuseReports = try container.decodeIfPresent(Int.self, forKey: .abuseReports)
        self.bounces = try container.decodeIfPresent(CampaignReportBounces.self, forKey: .bounces)
        self.campaignTitle = try container.decodeIfPresent(String.self, forKey: .campaignTitle)
        self.clicks = try container.decodeIfPresent(CampaignReportClicks.self, forKey: .clicks)
        self.deliveryStatus = try container.decodeIfPresent(CampaignReportDeliveryStatus.self, forKey: .deliveryStatus)
        self.ecommerce = try container.decodeIfPresent(CampaignReportEcommerce.self, forKey: .ecommerce)
        self.emailsSent = try container.decodeIfPresent(Int.self, forKey: .emailsSent)
        self.facebookLikes = try container.decodeIfPresent(CampaignReportFacebookLikes.self, forKey: .facebookLikes)
        self.forwards = try container.decodeIfPresent(CampaignReportForwards.self, forKey: .forwards)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.industryStats = try container.decodeIfPresent(CampaignReportIndustryStats.self, forKey: .industryStats)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.listIsActive = try container.decodeIfPresent(Bool.self, forKey: .listIsActive)
        self.listName = try container.decodeIfPresent(String.self, forKey: .listName)
        self.listStats = try container.decodeIfPresent(CampaignReportListStats.self, forKey: .listStats)
        self.opens = try container.decodeIfPresent(CampaignReportOpens.self, forKey: .opens)
        self.previewText = try container.decodeIfPresent(String.self, forKey: .previewText)
        self.rssLastSend = try container.decodeIfPresent(Date.self, forKey: .rssLastSend)
        self.sendTime = try container.decodeIfPresent(Date.self, forKey: .sendTime)
        self.shareReport = try container.decodeIfPresent(CampaignReportShareReport.self, forKey: .shareReport)
        self.subjectLine = try container.decodeIfPresent(String.self, forKey: .subjectLine)
        self.timeseries = try container.decodeIfPresent([CampaignReportTimeseriesItem].self, forKey: .timeseries)
        self.timewarp = try container.decodeIfPresent([CampaignReportTimewarpItem].self, forKey: .timewarp)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.unsubscribed = try container.decodeIfPresent(Int.self, forKey: .unsubscribed)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.abSplit, forKey: .abSplit)
        try container.encodeIfPresent(self.abuseReports, forKey: .abuseReports)
        try container.encodeIfPresent(self.bounces, forKey: .bounces)
        try container.encodeIfPresent(self.campaignTitle, forKey: .campaignTitle)
        try container.encodeIfPresent(self.clicks, forKey: .clicks)
        try container.encodeIfPresent(self.deliveryStatus, forKey: .deliveryStatus)
        try container.encodeIfPresent(self.ecommerce, forKey: .ecommerce)
        try container.encodeIfPresent(self.emailsSent, forKey: .emailsSent)
        try container.encodeIfPresent(self.facebookLikes, forKey: .facebookLikes)
        try container.encodeIfPresent(self.forwards, forKey: .forwards)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.industryStats, forKey: .industryStats)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.listIsActive, forKey: .listIsActive)
        try container.encodeIfPresent(self.listName, forKey: .listName)
        try container.encodeIfPresent(self.listStats, forKey: .listStats)
        try container.encodeIfPresent(self.opens, forKey: .opens)
        try container.encodeIfPresent(self.previewText, forKey: .previewText)
        try container.encodeIfPresent(self.rssLastSend, forKey: .rssLastSend)
        try container.encodeIfPresent(self.sendTime, forKey: .sendTime)
        try container.encodeIfPresent(self.shareReport, forKey: .shareReport)
        try container.encodeIfPresent(self.subjectLine, forKey: .subjectLine)
        try container.encodeIfPresent(self.timeseries, forKey: .timeseries)
        try container.encodeIfPresent(self.timewarp, forKey: .timewarp)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.unsubscribed, forKey: .unsubscribed)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case abSplit = "ab_split"
        case abuseReports = "abuse_reports"
        case bounces
        case campaignTitle = "campaign_title"
        case clicks
        case deliveryStatus = "delivery_status"
        case ecommerce
        case emailsSent = "emails_sent"
        case facebookLikes = "facebook_likes"
        case forwards
        case id
        case industryStats = "industry_stats"
        case listId = "list_id"
        case listIsActive = "list_is_active"
        case listName = "list_name"
        case listStats = "list_stats"
        case opens
        case previewText = "preview_text"
        case rssLastSend = "rss_last_send"
        case sendTime = "send_time"
        case shareReport = "share_report"
        case subjectLine = "subject_line"
        case timeseries
        case timewarp
        case type
        case unsubscribed
    }
}