import Foundation

/// Batch update list members.
public struct BatchSubscribeOrUnsubscribeListsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [BatchSubscribeOrUnsubscribeListsResponseLinksItem]?
    /// The total number of items matching the query, irrespective of pagination.
    public let errorCount: Int?
    /// An array of objects, each representing an email address that could not be added to the list or updated and an error message providing more details.
    public let errors: [BatchSubscribeOrUnsubscribeListsResponseErrorsItem]?
    /// An array of objects, each representing a new member that was added to the list.
    public let newMembers: [ListsPost]?
    /// The total number of items matching the query, irrespective of pagination.
    public let totalCreated: Int?
    /// The total number of items matching the query, irrespective of pagination.
    public let totalUpdated: Int?
    /// An array of objects, each representing an existing list member whose subscription status was updated.
    public let updatedMembers: [ListsPost]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [BatchSubscribeOrUnsubscribeListsResponseLinksItem]? = nil,
        errorCount: Int? = nil,
        errors: [BatchSubscribeOrUnsubscribeListsResponseErrorsItem]? = nil,
        newMembers: [ListsPost]? = nil,
        totalCreated: Int? = nil,
        totalUpdated: Int? = nil,
        updatedMembers: [ListsPost]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.errorCount = errorCount
        self.errors = errors
        self.newMembers = newMembers
        self.totalCreated = totalCreated
        self.totalUpdated = totalUpdated
        self.updatedMembers = updatedMembers
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([BatchSubscribeOrUnsubscribeListsResponseLinksItem].self, forKey: .links)
        self.errorCount = try container.decodeIfPresent(Int.self, forKey: .errorCount)
        self.errors = try container.decodeIfPresent([BatchSubscribeOrUnsubscribeListsResponseErrorsItem].self, forKey: .errors)
        self.newMembers = try container.decodeIfPresent([ListsPost].self, forKey: .newMembers)
        self.totalCreated = try container.decodeIfPresent(Int.self, forKey: .totalCreated)
        self.totalUpdated = try container.decodeIfPresent(Int.self, forKey: .totalUpdated)
        self.updatedMembers = try container.decodeIfPresent([ListsPost].self, forKey: .updatedMembers)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.errorCount, forKey: .errorCount)
        try container.encodeIfPresent(self.errors, forKey: .errors)
        try container.encodeIfPresent(self.newMembers, forKey: .newMembers)
        try container.encodeIfPresent(self.totalCreated, forKey: .totalCreated)
        try container.encodeIfPresent(self.totalUpdated, forKey: .totalUpdated)
        try container.encodeIfPresent(self.updatedMembers, forKey: .updatedMembers)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case errorCount = "error_count"
        case errors
        case newMembers = "new_members"
        case totalCreated = "total_created"
        case totalUpdated = "total_updated"
        case updatedMembers = "updated_members"
    }
}