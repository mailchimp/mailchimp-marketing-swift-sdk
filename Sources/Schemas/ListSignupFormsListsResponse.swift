import Foundation

/// List Signup Forms.
public struct ListSignupFormsListsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListSignupFormsListsResponseLinksItem]?
    /// The list id.
    public let listId: String?
    /// List signup form.
    public let signupForms: [SignupForm]?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListSignupFormsListsResponseLinksItem]? = nil,
        listId: String? = nil,
        signupForms: [SignupForm]? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.listId = listId
        self.signupForms = signupForms
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListSignupFormsListsResponseLinksItem].self, forKey: .links)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.signupForms = try container.decodeIfPresent([SignupForm].self, forKey: .signupForms)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.signupForms, forKey: .signupForms)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case listId = "list_id"
        case signupForms = "signup_forms"
        case totalItems = "total_items"
    }
}