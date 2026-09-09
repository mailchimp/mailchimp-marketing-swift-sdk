import Foundation

/// A summary of an individual landing page's settings and content.
public struct LandingPageReport: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [LandingPageReportLinksItem]?
    /// The number of clicks to this landing pages.
    public let clicks: Int?
    /// The percentage of people who visited your landing page and were added to your list.
    public let conversionRate: Double?
    public let ecommerce: LandingPageReportEcommerce?
    /// A string that uniquely identifies this landing page.
    public let id: String?
    /// The list id connected to this landing page.
    public let listId: String?
    /// List Name
    public let listName: String?
    /// The name of this landing page the user will see.
    public let name: String?
    /// The time this landing page was published.
    public let publishedAt: Date?
    /// A list of tags associated to the landing page.
    public let signupTags: [LandingPageReportSignupTagsItem]?
    /// The status of the landing page.
    public let status: String?
    /// The number of subscribes to this landing pages.
    public let subscribes: Int?
    public let timeseries: LandingPageReportTimeseries?
    /// The name of the landing page the user's customers will see.
    public let title: String?
    /// The number of unique visits to this landing pages.
    public let uniqueVisits: Int?
    /// The time this landing page was unpublished.
    public let unpublishedAt: Date?
    /// The landing page url.
    public let url: String?
    /// The number of visits to this landing pages.
    public let visits: Int?
    /// The ID used in the Mailchimp web application.
    public let webId: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [LandingPageReportLinksItem]? = nil,
        clicks: Int? = nil,
        conversionRate: Double? = nil,
        ecommerce: LandingPageReportEcommerce? = nil,
        id: String? = nil,
        listId: String? = nil,
        listName: String? = nil,
        name: String? = nil,
        publishedAt: Date? = nil,
        signupTags: [LandingPageReportSignupTagsItem]? = nil,
        status: String? = nil,
        subscribes: Int? = nil,
        timeseries: LandingPageReportTimeseries? = nil,
        title: String? = nil,
        uniqueVisits: Int? = nil,
        unpublishedAt: Date? = nil,
        url: String? = nil,
        visits: Int? = nil,
        webId: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.clicks = clicks
        self.conversionRate = conversionRate
        self.ecommerce = ecommerce
        self.id = id
        self.listId = listId
        self.listName = listName
        self.name = name
        self.publishedAt = publishedAt
        self.signupTags = signupTags
        self.status = status
        self.subscribes = subscribes
        self.timeseries = timeseries
        self.title = title
        self.uniqueVisits = uniqueVisits
        self.unpublishedAt = unpublishedAt
        self.url = url
        self.visits = visits
        self.webId = webId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([LandingPageReportLinksItem].self, forKey: .links)
        self.clicks = try container.decodeIfPresent(Int.self, forKey: .clicks)
        self.conversionRate = try container.decodeIfPresent(Double.self, forKey: .conversionRate)
        self.ecommerce = try container.decodeIfPresent(LandingPageReportEcommerce.self, forKey: .ecommerce)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.listName = try container.decodeIfPresent(String.self, forKey: .listName)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.publishedAt = try container.decodeIfPresent(Date.self, forKey: .publishedAt)
        self.signupTags = try container.decodeIfPresent([LandingPageReportSignupTagsItem].self, forKey: .signupTags)
        self.status = try container.decodeIfPresent(String.self, forKey: .status)
        self.subscribes = try container.decodeIfPresent(Int.self, forKey: .subscribes)
        self.timeseries = try container.decodeIfPresent(LandingPageReportTimeseries.self, forKey: .timeseries)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.uniqueVisits = try container.decodeIfPresent(Int.self, forKey: .uniqueVisits)
        self.unpublishedAt = try container.decodeIfPresent(Date.self, forKey: .unpublishedAt)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.visits = try container.decodeIfPresent(Int.self, forKey: .visits)
        self.webId = try container.decodeIfPresent(Int.self, forKey: .webId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.clicks, forKey: .clicks)
        try container.encodeIfPresent(self.conversionRate, forKey: .conversionRate)
        try container.encodeIfPresent(self.ecommerce, forKey: .ecommerce)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.listName, forKey: .listName)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.publishedAt, forKey: .publishedAt)
        try container.encodeIfPresent(self.signupTags, forKey: .signupTags)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.subscribes, forKey: .subscribes)
        try container.encodeIfPresent(self.timeseries, forKey: .timeseries)
        try container.encodeIfPresent(self.title, forKey: .title)
        try container.encodeIfPresent(self.uniqueVisits, forKey: .uniqueVisits)
        try container.encodeIfPresent(self.unpublishedAt, forKey: .unpublishedAt)
        try container.encodeIfPresent(self.url, forKey: .url)
        try container.encodeIfPresent(self.visits, forKey: .visits)
        try container.encodeIfPresent(self.webId, forKey: .webId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case clicks
        case conversionRate = "conversion_rate"
        case ecommerce
        case id
        case listId = "list_id"
        case listName = "list_name"
        case name
        case publishedAt = "published_at"
        case signupTags = "signup_tags"
        case status
        case subscribes
        case timeseries
        case title
        case uniqueVisits = "unique_visits"
        case unpublishedAt = "unpublished_at"
        case url
        case visits
        case webId = "web_id"
    }
}