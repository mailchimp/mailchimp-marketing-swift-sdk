import Foundation

/// A summary of the emails in an Automation workflow.
public struct ListEmailsAutomationsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [[ListEmailsAutomationsResponseLinksItemItem]]?
    /// An array of objects, each representing an email in an Automation workflow.
    public let emails: [AutomationWorkflowEmail]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [[ListEmailsAutomationsResponseLinksItemItem]]? = nil,
        emails: [AutomationWorkflowEmail]? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.emails = emails
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([[ListEmailsAutomationsResponseLinksItemItem]].self, forKey: .links)
        self.emails = try container.decodeIfPresent([AutomationWorkflowEmail].self, forKey: .emails)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.emails, forKey: .emails)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case emails
        case totalItems = "total_items"
    }
}