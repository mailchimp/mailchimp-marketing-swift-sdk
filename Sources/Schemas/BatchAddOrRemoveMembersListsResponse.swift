import Foundation

/// Batch add/remove List members to/from static segment
public struct BatchAddOrRemoveMembersListsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [BatchAddOrRemoveMembersListsResponseLinksItem]?
    /// The total number of items matching the query, irrespective of pagination.
    public let errorCount: Int?
    /// An array of objects, each representing an array of email addresses that could not be added to the segment or removed and an error message providing more details.
    public let errors: [BatchAddOrRemoveMembersListsResponseErrorsItem]?
    /// An array of objects, each representing a new member that was added to the static segment.
    public let membersAdded: [ListsPost]?
    /// An array of objects, each representing an existing list member that got deleted from the static segment.
    public let membersRemoved: [ListsPost]?
    /// The total number of items matching the query, irrespective of pagination.
    public let totalAdded: Int?
    /// The total number of items matching the query, irrespective of pagination.
    public let totalRemoved: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [BatchAddOrRemoveMembersListsResponseLinksItem]? = nil,
        errorCount: Int? = nil,
        errors: [BatchAddOrRemoveMembersListsResponseErrorsItem]? = nil,
        membersAdded: [ListsPost]? = nil,
        membersRemoved: [ListsPost]? = nil,
        totalAdded: Int? = nil,
        totalRemoved: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.errorCount = errorCount
        self.errors = errors
        self.membersAdded = membersAdded
        self.membersRemoved = membersRemoved
        self.totalAdded = totalAdded
        self.totalRemoved = totalRemoved
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([BatchAddOrRemoveMembersListsResponseLinksItem].self, forKey: .links)
        self.errorCount = try container.decodeIfPresent(Int.self, forKey: .errorCount)
        self.errors = try container.decodeIfPresent([BatchAddOrRemoveMembersListsResponseErrorsItem].self, forKey: .errors)
        self.membersAdded = try container.decodeIfPresent([ListsPost].self, forKey: .membersAdded)
        self.membersRemoved = try container.decodeIfPresent([ListsPost].self, forKey: .membersRemoved)
        self.totalAdded = try container.decodeIfPresent(Int.self, forKey: .totalAdded)
        self.totalRemoved = try container.decodeIfPresent(Int.self, forKey: .totalRemoved)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.errorCount, forKey: .errorCount)
        try container.encodeIfPresent(self.errors, forKey: .errors)
        try container.encodeIfPresent(self.membersAdded, forKey: .membersAdded)
        try container.encodeIfPresent(self.membersRemoved, forKey: .membersRemoved)
        try container.encodeIfPresent(self.totalAdded, forKey: .totalAdded)
        try container.encodeIfPresent(self.totalRemoved, forKey: .totalRemoved)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case errorCount = "error_count"
        case errors
        case membersAdded = "members_added"
        case membersRemoved = "members_removed"
        case totalAdded = "total_added"
        case totalRemoved = "total_removed"
    }
}