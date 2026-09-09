import Foundation

/// A summary of an individual Automation workflow's settings and content.
public struct AutomationWorkflow: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [AutomationWorkflowLinksItem]?
    /// The date and time the Automation was created in ISO 8601 format.
    public let createTime: Date?
    /// The total number of emails sent for the Automation.
    public let emailsSent: Int?
    /// A string that identifies the Automation.
    public let id: String?
    /// List settings for the Automation.
    public let recipients: AutomationWorkflowRecipients?
    /// A summary of opens and clicks for sent campaigns.
    public let reportSummary: AutomationWorkflowReportSummary?
    /// The settings for the Automation workflow.
    public let settings: AutomationWorkflowSettings?
    /// The date and time the Automation was started in ISO 8601 format.
    public let startTime: Date?
    /// The current status of the Automation.
    public let status: AutomationWorkflowStatus?
    /// The tracking options for the Automation.
    public let tracking: AutomationWorkflowTracking?
    /// Available triggers for Automation workflows.
    public let triggerSettings: AutomationWorkflowTriggerSettings?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [AutomationWorkflowLinksItem]? = nil,
        createTime: Date? = nil,
        emailsSent: Int? = nil,
        id: String? = nil,
        recipients: AutomationWorkflowRecipients? = nil,
        reportSummary: AutomationWorkflowReportSummary? = nil,
        settings: AutomationWorkflowSettings? = nil,
        startTime: Date? = nil,
        status: AutomationWorkflowStatus? = nil,
        tracking: AutomationWorkflowTracking? = nil,
        triggerSettings: AutomationWorkflowTriggerSettings? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.createTime = createTime
        self.emailsSent = emailsSent
        self.id = id
        self.recipients = recipients
        self.reportSummary = reportSummary
        self.settings = settings
        self.startTime = startTime
        self.status = status
        self.tracking = tracking
        self.triggerSettings = triggerSettings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([AutomationWorkflowLinksItem].self, forKey: .links)
        self.createTime = try container.decodeIfPresent(Date.self, forKey: .createTime)
        self.emailsSent = try container.decodeIfPresent(Int.self, forKey: .emailsSent)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.recipients = try container.decodeIfPresent(AutomationWorkflowRecipients.self, forKey: .recipients)
        self.reportSummary = try container.decodeIfPresent(AutomationWorkflowReportSummary.self, forKey: .reportSummary)
        self.settings = try container.decodeIfPresent(AutomationWorkflowSettings.self, forKey: .settings)
        self.startTime = try container.decodeIfPresent(Date.self, forKey: .startTime)
        self.status = try container.decodeIfPresent(AutomationWorkflowStatus.self, forKey: .status)
        self.tracking = try container.decodeIfPresent(AutomationWorkflowTracking.self, forKey: .tracking)
        self.triggerSettings = try container.decodeIfPresent(AutomationWorkflowTriggerSettings.self, forKey: .triggerSettings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.createTime, forKey: .createTime)
        try container.encodeIfPresent(self.emailsSent, forKey: .emailsSent)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.recipients, forKey: .recipients)
        try container.encodeIfPresent(self.reportSummary, forKey: .reportSummary)
        try container.encodeIfPresent(self.settings, forKey: .settings)
        try container.encodeIfPresent(self.startTime, forKey: .startTime)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.tracking, forKey: .tracking)
        try container.encodeIfPresent(self.triggerSettings, forKey: .triggerSettings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case createTime = "create_time"
        case emailsSent = "emails_sent"
        case id
        case recipients
        case reportSummary = "report_summary"
        case settings
        case startTime = "start_time"
        case status
        case tracking
        case triggerSettings = "trigger_settings"
    }
}