import Foundation

/// The settings for the Automation workflow.
public struct AutomationWorkflowSettings: Codable, Hashable, Sendable {
    /// Whether Mailchimp [authenticated](https://mailchimp.com/help/about-email-authentication/) the Automation. Defaults to `true`.
    public let authenticate: Bool?
    /// Whether to automatically append Mailchimp's [default footer](https://mailchimp.com/help/about-campaign-footers/) to the Automation.
    public let autoFooter: Bool?
    /// The 'from' name for the Automation (not an email address).
    public let fromName: String?
    /// Whether to automatically inline the CSS included with the Automation content.
    public let inlineCss: Bool?
    /// The reply-to email address for the Automation.
    public let replyTo: String?
    /// The title of the Automation.
    public let title: String?
    /// The Automation's custom 'To' name, typically the first name [audience field](https://mailchimp.com/help/getting-started-with-merge-tags/).
    public let toName: String?
    /// Whether to use Mailchimp Conversation feature to manage replies
    public let useConversation: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        authenticate: Bool? = nil,
        autoFooter: Bool? = nil,
        fromName: String? = nil,
        inlineCss: Bool? = nil,
        replyTo: String? = nil,
        title: String? = nil,
        toName: String? = nil,
        useConversation: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.authenticate = authenticate
        self.autoFooter = autoFooter
        self.fromName = fromName
        self.inlineCss = inlineCss
        self.replyTo = replyTo
        self.title = title
        self.toName = toName
        self.useConversation = useConversation
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.authenticate = try container.decodeIfPresent(Bool.self, forKey: .authenticate)
        self.autoFooter = try container.decodeIfPresent(Bool.self, forKey: .autoFooter)
        self.fromName = try container.decodeIfPresent(String.self, forKey: .fromName)
        self.inlineCss = try container.decodeIfPresent(Bool.self, forKey: .inlineCss)
        self.replyTo = try container.decodeIfPresent(String.self, forKey: .replyTo)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.toName = try container.decodeIfPresent(String.self, forKey: .toName)
        self.useConversation = try container.decodeIfPresent(Bool.self, forKey: .useConversation)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.authenticate, forKey: .authenticate)
        try container.encodeIfPresent(self.autoFooter, forKey: .autoFooter)
        try container.encodeIfPresent(self.fromName, forKey: .fromName)
        try container.encodeIfPresent(self.inlineCss, forKey: .inlineCss)
        try container.encodeIfPresent(self.replyTo, forKey: .replyTo)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.toName, forKey: .toName)
        try container.encodeIfPresent(self.useConversation, forKey: .useConversation)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case authenticate
        case autoFooter = "auto_footer"
        case fromName = "from_name"
        case inlineCss = "inline_css"
        case replyTo = "reply_to"
        case title
        case toName = "to_name"
        case useConversation = "use_conversation"
    }
}