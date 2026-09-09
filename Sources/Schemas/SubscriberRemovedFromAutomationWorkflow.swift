import Foundation

/// A summary of a subscriber removed from an Automation workflow.
public struct SubscriberRemovedFromAutomationWorkflow: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [[SubscriberRemovedFromAutomationWorkflowLinksItemItem]]?
    /// The list member's email address.
    public let emailAddress: String?
    /// The MD5 hash of the lowercase version of the list member's email address.
    public let id: String?
    /// A string that uniquely identifies a list.
    public let listId: String?
    /// A string that uniquely identifies an Automation workflow.
    public let workflowId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [[SubscriberRemovedFromAutomationWorkflowLinksItemItem]]? = nil,
        emailAddress: String? = nil,
        id: String? = nil,
        listId: String? = nil,
        workflowId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.emailAddress = emailAddress
        self.id = id
        self.listId = listId
        self.workflowId = workflowId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([[SubscriberRemovedFromAutomationWorkflowLinksItemItem]].self, forKey: .links)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.workflowId = try container.decodeIfPresent(String.self, forKey: .workflowId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.workflowId, forKey: .workflowId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case emailAddress = "email_address"
        case id
        case listId = "list_id"
        case workflowId = "workflow_id"
    }
}