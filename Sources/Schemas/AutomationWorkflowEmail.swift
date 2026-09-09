import Foundation

/// A summary of an individual Automation workflow email.
public struct AutomationWorkflowEmail: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [AutomationWorkflowEmailLinksItem]?
    /// The link to the campaign's archive version in ISO 8601 format.
    public let archiveUrl: String?
    /// How the campaign's content is put together ('template', 'drag_and_drop', 'html', 'url').
    public let contentType: String?
    /// The date and time the campaign was created in ISO 8601 format.
    public let createTime: Date?
    /// The delay settings for an Automation email.
    public let delay: AutomationWorkflowEmailDelay?
    /// The total number of emails sent for this campaign.
    public let emailsSent: Int?
    /// Determines if the campaign contains the *|BRAND:LOGO|* merge tag.
    public let hasLogoMergeTag: Bool?
    /// A string that uniquely identifies the Automation email.
    public let id: String?
    /// Determines if the automation email needs its blocks refreshed by opening the web-based campaign editor.
    public let needsBlockRefresh: Bool?
    /// The position of an Automation email in a workflow.
    public let position: Int?
    /// List settings for the campaign.
    public let recipients: AutomationWorkflowEmailRecipients?
    /// For sent campaigns, a summary of opens and clicks.
    public let reportSummary: AutomationWorkflowEmailReportSummary?
    ///  The date and time a campaign was sent in ISO 8601 format
    public let sendTime: Date?
    /// Settings for the campaign including the email subject, from name, and from email address.
    public let settings: AutomationWorkflowEmailSettings?
    /// The preview for the campaign, rendered by social networks like Facebook and Twitter. [Learn more](https://mailchimp.com/help/enable-and-customize-social-cards/).
    public let socialCard: AutomationWorkflowEmailSocialCard?
    /// The date and time the campaign was started in ISO 8601 format.
    public let startTime: Date?
    /// The current status of the campaign.
    public let status: AutomationWorkflowEmailStatus?
    /// The tracking options for a campaign.
    public let tracking: AutomationWorkflowEmailTracking?
    /// Available triggers for Automation workflows.
    public let triggerSettings: AutomationWorkflowEmailTriggerSettings?
    /// The ID used in the Mailchimp web application. View this automation in your Mailchimp account at `https://{dc}.admin.mailchimp.com/campaigns/show/?id={web_id}`.
    public let webId: Int?
    /// A string that uniquely identifies an Automation workflow.
    public let workflowId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [AutomationWorkflowEmailLinksItem]? = nil,
        archiveUrl: String? = nil,
        contentType: String? = nil,
        createTime: Date? = nil,
        delay: AutomationWorkflowEmailDelay? = nil,
        emailsSent: Int? = nil,
        hasLogoMergeTag: Bool? = nil,
        id: String? = nil,
        needsBlockRefresh: Bool? = nil,
        position: Int? = nil,
        recipients: AutomationWorkflowEmailRecipients? = nil,
        reportSummary: AutomationWorkflowEmailReportSummary? = nil,
        sendTime: Date? = nil,
        settings: AutomationWorkflowEmailSettings? = nil,
        socialCard: AutomationWorkflowEmailSocialCard? = nil,
        startTime: Date? = nil,
        status: AutomationWorkflowEmailStatus? = nil,
        tracking: AutomationWorkflowEmailTracking? = nil,
        triggerSettings: AutomationWorkflowEmailTriggerSettings? = nil,
        webId: Int? = nil,
        workflowId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.archiveUrl = archiveUrl
        self.contentType = contentType
        self.createTime = createTime
        self.delay = delay
        self.emailsSent = emailsSent
        self.hasLogoMergeTag = hasLogoMergeTag
        self.id = id
        self.needsBlockRefresh = needsBlockRefresh
        self.position = position
        self.recipients = recipients
        self.reportSummary = reportSummary
        self.sendTime = sendTime
        self.settings = settings
        self.socialCard = socialCard
        self.startTime = startTime
        self.status = status
        self.tracking = tracking
        self.triggerSettings = triggerSettings
        self.webId = webId
        self.workflowId = workflowId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([AutomationWorkflowEmailLinksItem].self, forKey: .links)
        self.archiveUrl = try container.decodeIfPresent(String.self, forKey: .archiveUrl)
        self.contentType = try container.decodeIfPresent(String.self, forKey: .contentType)
        self.createTime = try container.decodeIfPresent(Date.self, forKey: .createTime)
        self.delay = try container.decodeIfPresent(AutomationWorkflowEmailDelay.self, forKey: .delay)
        self.emailsSent = try container.decodeIfPresent(Int.self, forKey: .emailsSent)
        self.hasLogoMergeTag = try container.decodeIfPresent(Bool.self, forKey: .hasLogoMergeTag)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.needsBlockRefresh = try container.decodeIfPresent(Bool.self, forKey: .needsBlockRefresh)
        self.position = try container.decodeIfPresent(Int.self, forKey: .position)
        self.recipients = try container.decodeIfPresent(AutomationWorkflowEmailRecipients.self, forKey: .recipients)
        self.reportSummary = try container.decodeIfPresent(AutomationWorkflowEmailReportSummary.self, forKey: .reportSummary)
        self.sendTime = try container.decodeIfPresent(Date.self, forKey: .sendTime)
        self.settings = try container.decodeIfPresent(AutomationWorkflowEmailSettings.self, forKey: .settings)
        self.socialCard = try container.decodeIfPresent(AutomationWorkflowEmailSocialCard.self, forKey: .socialCard)
        self.startTime = try container.decodeIfPresent(Date.self, forKey: .startTime)
        self.status = try container.decodeIfPresent(AutomationWorkflowEmailStatus.self, forKey: .status)
        self.tracking = try container.decodeIfPresent(AutomationWorkflowEmailTracking.self, forKey: .tracking)
        self.triggerSettings = try container.decodeIfPresent(AutomationWorkflowEmailTriggerSettings.self, forKey: .triggerSettings)
        self.webId = try container.decodeIfPresent(Int.self, forKey: .webId)
        self.workflowId = try container.decodeIfPresent(String.self, forKey: .workflowId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.archiveUrl, forKey: .archiveUrl)
        try container.encodeIfPresent(self.contentType, forKey: .contentType)
        try container.encodeIfPresent(self.createTime, forKey: .createTime)
        try container.encodeIfPresent(self.delay, forKey: .delay)
        try container.encodeIfPresent(self.emailsSent, forKey: .emailsSent)
        try container.encodeIfPresent(self.hasLogoMergeTag, forKey: .hasLogoMergeTag)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.needsBlockRefresh, forKey: .needsBlockRefresh)
        try container.encodeIfPresent(self.position, forKey: .position)
        try container.encodeIfPresent(self.recipients, forKey: .recipients)
        try container.encodeIfPresent(self.reportSummary, forKey: .reportSummary)
        try container.encodeIfPresent(self.sendTime, forKey: .sendTime)
        try container.encodeIfPresent(self.settings, forKey: .settings)
        try container.encodeIfPresent(self.socialCard, forKey: .socialCard)
        try container.encodeIfPresent(self.startTime, forKey: .startTime)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.tracking, forKey: .tracking)
        try container.encodeIfPresent(self.triggerSettings, forKey: .triggerSettings)
        try container.encodeIfPresent(self.webId, forKey: .webId)
        try container.encodeIfPresent(self.workflowId, forKey: .workflowId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case archiveUrl = "archive_url"
        case contentType = "content_type"
        case createTime = "create_time"
        case delay
        case emailsSent = "emails_sent"
        case hasLogoMergeTag = "has_logo_merge_tag"
        case id
        case needsBlockRefresh = "needs_block_refresh"
        case position
        case recipients
        case reportSummary = "report_summary"
        case sendTime = "send_time"
        case settings
        case socialCard = "social_card"
        case startTime = "start_time"
        case status
        case tracking
        case triggerSettings = "trigger_settings"
        case webId = "web_id"
        case workflowId = "workflow_id"
    }
}