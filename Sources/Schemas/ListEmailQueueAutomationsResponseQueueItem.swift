import Foundation

/// Information about subscribers in an Automation email queue.
public struct ListEmailQueueAutomationsResponseQueueItem: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [[ListEmailQueueAutomationsResponseQueueItemLinksItemItem]]?
    /// The list member's email address.
    public let emailAddress: String
    /// A string that uniquely identifies an email in an Automation workflow.
    public let emailId: String?
    /// The MD5 hash of the lowercase version of the list member's email address.
    public let id: String?
    /// A string that uniquely identifies a list.
    public let listId: String?
    /// The date and time of the next send for the workflow email in ISO 8601 format.
    public let nextSend: Date?
    /// A string that uniquely identifies an Automation workflow.
    public let workflowId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [[ListEmailQueueAutomationsResponseQueueItemLinksItemItem]]? = nil,
        emailAddress: String,
        emailId: String? = nil,
        id: String? = nil,
        listId: String? = nil,
        nextSend: Date? = nil,
        workflowId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.emailAddress = emailAddress
        self.emailId = emailId
        self.id = id
        self.listId = listId
        self.nextSend = nextSend
        self.workflowId = workflowId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([[ListEmailQueueAutomationsResponseQueueItemLinksItemItem]].self, forKey: .links)
        self.emailAddress = try container.decode(String.self, forKey: .emailAddress)
        self.emailId = try container.decodeIfPresent(String.self, forKey: .emailId)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.nextSend = try container.decodeIfPresent(Date.self, forKey: .nextSend)
        self.workflowId = try container.decodeIfPresent(String.self, forKey: .workflowId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encode(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.emailId, forKey: .emailId)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.nextSend, forKey: .nextSend)
        try container.encodeIfPresent(self.workflowId, forKey: .workflowId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case emailAddress = "email_address"
        case emailId = "email_id"
        case id
        case listId = "list_id"
        case nextSend = "next_send"
        case workflowId = "workflow_id"
    }
}