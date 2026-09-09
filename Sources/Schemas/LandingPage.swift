import Foundation

/// A summary of an individual landing page's settings and content.
public struct LandingPage: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [LandingPageLinksItem]?
    /// The time this landing page was created.
    public let createdAt: Date?
    /// Created by mobile or web
    public let createdBySource: String?
    /// The description of this landing page.
    public let description: String?
    /// A string that uniquely identifies this landing page.
    public let id: String?
    /// The list's ID associated with this landing page.
    public let listId: String?
    /// The name of this landing page.
    public let name: String?
    /// The time this landing page was published.
    public let publishedAt: Date?
    /// The status of this landing page.
    public let status: LandingPageStatus?
    /// The ID of the store associated with this landing page.
    public let storeId: String?
    /// The template_id of this landing page.
    public let templateId: Int?
    /// The title of this landing page seen in the browser's title bar.
    public let title: String?
    /// The tracking settings applied to this landing page.
    public let tracking: LandingPageTracking?
    /// The time this landing page was unpublished.
    public let unpublishedAt: Date?
    /// The time this landing page was updated at.
    public let updatedAt: Date?
    /// The url of the published landing page.
    public let url: String?
    /// The ID used in the Mailchimp web application.
    public let webId: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [LandingPageLinksItem]? = nil,
        createdAt: Date? = nil,
        createdBySource: String? = nil,
        description: String? = nil,
        id: String? = nil,
        listId: String? = nil,
        name: String? = nil,
        publishedAt: Date? = nil,
        status: LandingPageStatus? = nil,
        storeId: String? = nil,
        templateId: Int? = nil,
        title: String? = nil,
        tracking: LandingPageTracking? = nil,
        unpublishedAt: Date? = nil,
        updatedAt: Date? = nil,
        url: String? = nil,
        webId: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.createdAt = createdAt
        self.createdBySource = createdBySource
        self.description = description
        self.id = id
        self.listId = listId
        self.name = name
        self.publishedAt = publishedAt
        self.status = status
        self.storeId = storeId
        self.templateId = templateId
        self.title = title
        self.tracking = tracking
        self.unpublishedAt = unpublishedAt
        self.updatedAt = updatedAt
        self.url = url
        self.webId = webId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([LandingPageLinksItem].self, forKey: .links)
        self.createdAt = try container.decodeIfPresent(Date.self, forKey: .createdAt)
        self.createdBySource = try container.decodeIfPresent(String.self, forKey: .createdBySource)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.publishedAt = try container.decodeIfPresent(Date.self, forKey: .publishedAt)
        self.status = try container.decodeIfPresent(LandingPageStatus.self, forKey: .status)
        self.storeId = try container.decodeIfPresent(String.self, forKey: .storeId)
        self.templateId = try container.decodeIfPresent(Int.self, forKey: .templateId)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.tracking = try container.decodeIfPresent(LandingPageTracking.self, forKey: .tracking)
        self.unpublishedAt = try container.decodeIfPresent(Date.self, forKey: .unpublishedAt)
        self.updatedAt = try container.decodeIfPresent(Date.self, forKey: .updatedAt)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.webId = try container.decodeIfPresent(Int.self, forKey: .webId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.createdBySource, forKey: .createdBySource)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.publishedAt, forKey: .publishedAt)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.storeId, forKey: .storeId)
        try container.encodeIfPresent(self.templateId, forKey: .templateId)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.tracking, forKey: .tracking)
        try container.encodeIfPresent(self.unpublishedAt, forKey: .unpublishedAt)
        try container.encodeIfPresent(self.updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(self.url, forKey: .url)
        try container.encodeIfPresent(self.webId, forKey: .webId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case createdAt = "created_at"
        case createdBySource = "created_by_source"
        case description
        case id
        case listId = "list_id"
        case name
        case publishedAt = "published_at"
        case status
        case storeId = "store_id"
        case templateId = "template_id"
        case title
        case tracking
        case unpublishedAt = "unpublished_at"
        case updatedAt = "updated_at"
        case url
        case webId = "web_id"
    }
}