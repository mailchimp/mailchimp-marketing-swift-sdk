import Foundation

/// List signup form.
public struct SignupForm: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [SignupFormLinksItem]?
    /// The signup form body content.
    public let contents: [SignupFormContentsItem]?
    /// Options for customizing your signup form header.
    public let header: SignupFormHeader?
    /// The signup form's list id.
    public let listId: String?
    /// Signup form URL.
    public let signupFormUrl: String?
    /// An array of objects, each representing an element style for the signup form.
    public let styles: [SignupFormStylesItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [SignupFormLinksItem]? = nil,
        contents: [SignupFormContentsItem]? = nil,
        header: SignupFormHeader? = nil,
        listId: String? = nil,
        signupFormUrl: String? = nil,
        styles: [SignupFormStylesItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.contents = contents
        self.header = header
        self.listId = listId
        self.signupFormUrl = signupFormUrl
        self.styles = styles
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([SignupFormLinksItem].self, forKey: .links)
        self.contents = try container.decodeIfPresent([SignupFormContentsItem].self, forKey: .contents)
        self.header = try container.decodeIfPresent(SignupFormHeader.self, forKey: .header)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.signupFormUrl = try container.decodeIfPresent(String.self, forKey: .signupFormUrl)
        self.styles = try container.decodeIfPresent([SignupFormStylesItem].self, forKey: .styles)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.contents, forKey: .contents)
        try container.encodeIfPresent(self.header, forKey: .header)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.signupFormUrl, forKey: .signupFormUrl)
        try container.encodeIfPresent(self.styles, forKey: .styles)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case contents
        case header
        case listId = "list_id"
        case signupFormUrl = "signup_form_url"
        case styles
    }
}