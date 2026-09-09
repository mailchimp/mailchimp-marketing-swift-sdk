import Foundation

/// A summary of the subscribers who were removed from an Automation workflow.
public struct ListRemovedSubscribersAutomationsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [[ListRemovedSubscribersAutomationsResponseLinksItemItem]]?
    /// An array of objects, each representing a subscriber who was removed from an Automation workflow.
    public let subscribers: [SubscriberRemovedFromAutomationWorkflow]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// A string that uniquely identifies an Automation workflow.
    public let workflowId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [[ListRemovedSubscribersAutomationsResponseLinksItemItem]]? = nil,
        subscribers: [SubscriberRemovedFromAutomationWorkflow]? = nil,
        totalItems: Int? = nil,
        workflowId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.subscribers = subscribers
        self.totalItems = totalItems
        self.workflowId = workflowId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([[ListRemovedSubscribersAutomationsResponseLinksItemItem]].self, forKey: .links)
        self.subscribers = try container.decodeIfPresent([SubscriberRemovedFromAutomationWorkflow].self, forKey: .subscribers)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.workflowId = try container.decodeIfPresent(String.self, forKey: .workflowId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.subscribers, forKey: .subscribers)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
        try container.encodeIfPresent(self.workflowId, forKey: .workflowId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case subscribers
        case totalItems = "total_items"
        case workflowId = "workflow_id"
    }
}