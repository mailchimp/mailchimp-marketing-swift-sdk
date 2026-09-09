import Foundation

/// A summary of a specific list's growth activity for a specific month and year.
public struct GrowthHistory: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [GrowthHistoryLinksItem]?
    /// Newly cleaned (hard-bounced) members on the list for a specific month.
    public let cleaned: Int?
    /// Newly deleted members on the list for a specific month.
    public let deleted: Int?
    /// (deprecated)
    public let existing: Int?
    /// (deprecated)
    public let imports: Int?
    /// The list id for the growth activity report.
    public let listId: String?
    /// The month that the growth history is describing.
    public let month: String?
    /// (deprecated)
    public let optins: Int?
    /// Pending members on the list for a specific month.
    public let pending: Int?
    /// Newly reconfirmed members on the list for a specific month.
    public let reconfirm: Int?
    /// Total subscribed members on the list at the end of the month.
    public let subscribed: Int?
    /// Subscribers that have been sent transactional emails via Mandrill.
    public let transactional: Int?
    /// Newly unsubscribed members on the list for a specific month.
    public let unsubscribed: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [GrowthHistoryLinksItem]? = nil,
        cleaned: Int? = nil,
        deleted: Int? = nil,
        existing: Int? = nil,
        imports: Int? = nil,
        listId: String? = nil,
        month: String? = nil,
        optins: Int? = nil,
        pending: Int? = nil,
        reconfirm: Int? = nil,
        subscribed: Int? = nil,
        transactional: Int? = nil,
        unsubscribed: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.cleaned = cleaned
        self.deleted = deleted
        self.existing = existing
        self.imports = imports
        self.listId = listId
        self.month = month
        self.optins = optins
        self.pending = pending
        self.reconfirm = reconfirm
        self.subscribed = subscribed
        self.transactional = transactional
        self.unsubscribed = unsubscribed
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([GrowthHistoryLinksItem].self, forKey: .links)
        self.cleaned = try container.decodeIfPresent(Int.self, forKey: .cleaned)
        self.deleted = try container.decodeIfPresent(Int.self, forKey: .deleted)
        self.existing = try container.decodeIfPresent(Int.self, forKey: .existing)
        self.imports = try container.decodeIfPresent(Int.self, forKey: .imports)
        self.listId = try container.decodeIfPresent(String.self, forKey: .listId)
        self.month = try container.decodeIfPresent(String.self, forKey: .month)
        self.optins = try container.decodeIfPresent(Int.self, forKey: .optins)
        self.pending = try container.decodeIfPresent(Int.self, forKey: .pending)
        self.reconfirm = try container.decodeIfPresent(Int.self, forKey: .reconfirm)
        self.subscribed = try container.decodeIfPresent(Int.self, forKey: .subscribed)
        self.transactional = try container.decodeIfPresent(Int.self, forKey: .transactional)
        self.unsubscribed = try container.decodeIfPresent(Int.self, forKey: .unsubscribed)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.cleaned, forKey: .cleaned)
        try container.encodeIfPresent(self.deleted, forKey: .deleted)
        try container.encodeIfPresent(self.existing, forKey: .existing)
        try container.encodeIfPresent(self.imports, forKey: .imports)
        try container.encodeIfPresent(self.listId, forKey: .listId)
        try container.encodeIfPresent(self.month, forKey: .month)
        try container.encodeIfPresent(self.optins, forKey: .optins)
        try container.encodeIfPresent(self.pending, forKey: .pending)
        try container.encodeIfPresent(self.reconfirm, forKey: .reconfirm)
        try container.encodeIfPresent(self.subscribed, forKey: .subscribed)
        try container.encodeIfPresent(self.transactional, forKey: .transactional)
        try container.encodeIfPresent(self.unsubscribed, forKey: .unsubscribed)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case cleaned
        case deleted
        case existing
        case imports
        case listId = "list_id"
        case month
        case optins
        case pending
        case reconfirm
        case subscribed
        case transactional
        case unsubscribed
    }
}