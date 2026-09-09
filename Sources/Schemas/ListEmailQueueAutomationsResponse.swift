import Foundation

/// An automation workflow
public struct ListEmailQueueAutomationsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [[ListEmailQueueAutomationsResponseLinksItemItem]]?
    /// A string that uniquely identifies an email in an Automation workflow.
    public let emailId: String?
    /// An array of objects, each representing a subscriber queue for an email in an Automation workflow.
    public let queue: [ListEmailQueueAutomationsResponseQueueItem]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// A string that uniquely identifies an Automation workflow.
    public let workflowId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [[ListEmailQueueAutomationsResponseLinksItemItem]]? = nil,
        emailId: String? = nil,
        queue: [ListEmailQueueAutomationsResponseQueueItem]? = nil,
        totalItems: Int? = nil,
        workflowId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.emailId = emailId
        self.queue = queue
        self.totalItems = totalItems
        self.workflowId = workflowId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([[ListEmailQueueAutomationsResponseLinksItemItem]].self, forKey: .links)
        self.emailId = try container.decodeIfPresent(String.self, forKey: .emailId)
        self.queue = try container.decodeIfPresent([ListEmailQueueAutomationsResponseQueueItem].self, forKey: .queue)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.workflowId = try container.decodeIfPresent(String.self, forKey: .workflowId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.emailId, forKey: .emailId)
        try container.encodeIfPresent(self.queue, forKey: .queue)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
        try container.encodeIfPresent(self.workflowId, forKey: .workflowId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case emailId = "email_id"
        case queue
        case totalItems = "total_items"
        case workflowId = "workflow_id"
    }
}