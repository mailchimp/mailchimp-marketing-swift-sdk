import Foundation

/// This object represents a link from the resource where it is found to another resource or action that may be performed.
public struct ListActivityListsResponseActivityItemLinksItem: Codable, Hashable, Sendable {
    /// This property contains a fully-qualified URL that can be called to retrieve the linked resource or perform the linked action.
    public let href: String?
    /// The HTTP method that should be used when accessing the URL defined in 'href'.
    public let method: ListActivityListsResponseActivityItemLinksItemMethod?
    /// As with an HTML 'rel' attribute, this describes the type of link.
    public let rel: String?
    /// For HTTP methods that can receive bodies (POST and PUT), this is a URL representing the schema that the body should conform to.
    public let schema: String?
    /// For GETs, this is a URL representing the schema that the response should conform to.
    public let targetSchema: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        href: String? = nil,
        method: ListActivityListsResponseActivityItemLinksItemMethod? = nil,
        rel: String? = nil,
        schema: String? = nil,
        targetSchema: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.href = href
        self.method = method
        self.rel = rel
        self.schema = schema
        self.targetSchema = targetSchema
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.href = try container.decodeIfPresent(String.self, forKey: .href)
        self.method = try container.decodeIfPresent(ListActivityListsResponseActivityItemLinksItemMethod.self, forKey: .method)
        self.rel = try container.decodeIfPresent(String.self, forKey: .rel)
        self.schema = try container.decodeIfPresent(String.self, forKey: .schema)
        self.targetSchema = try container.decodeIfPresent(String.self, forKey: .targetSchema)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.href, forKey: .href)
        try container.encodeIfPresent(self.method, forKey: .method)
        try container.encodeIfPresent(self.rel, forKey: .rel)
        try container.encodeIfPresent(self.schema, forKey: .schema)
        try container.encodeIfPresent(self.targetSchema, forKey: .targetSchema)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case href
        case method
        case rel
        case schema
        case targetSchema
    }
}