import Foundation

/// Information about a specific template.
public struct TemplateInstance: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [TemplateInstanceLinksItem]?
    /// User templates are not 'deleted,' but rather marked as 'inactive.' Returns whether the template is still active.
    public let active: Bool?
    /// If available, the category the template is listed in.
    public let category: String?
    /// How the template's content is put together.
    public let contentType: TemplateInstanceContentType?
    /// The login name for template's creator.
    public let createdBy: String?
    /// The date and time the template was created in ISO 8601 format.
    public let dateCreated: Date?
    /// The date and time the template was edited in ISO 8601 format.
    public let dateEdited: Date?
    /// Whether the template uses the drag and drop editor.
    public let dragAndDrop: Bool?
    /// The login name who last edited the template.
    public let editedBy: String?
    /// The id of the folder the template is currently in.
    public let folderId: String?
    /// The individual id for the template.
    public let id: Int?
    /// The name of the template.
    public let name: String?
    /// Whether the template contains media queries to make it responsive.
    public let responsive: Bool?
    /// The URL used for [template sharing](https://mailchimp.com/help/share-a-template/).
    public let shareUrl: String?
    /// If available, the URL for a thumbnail of the template.
    public let thumbnail: String?
    /// The type of template (user, base, or gallery).
    public let type: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [TemplateInstanceLinksItem]? = nil,
        active: Bool? = nil,
        category: String? = nil,
        contentType: TemplateInstanceContentType? = nil,
        createdBy: String? = nil,
        dateCreated: Date? = nil,
        dateEdited: Date? = nil,
        dragAndDrop: Bool? = nil,
        editedBy: String? = nil,
        folderId: String? = nil,
        id: Int? = nil,
        name: String? = nil,
        responsive: Bool? = nil,
        shareUrl: String? = nil,
        thumbnail: String? = nil,
        type: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.active = active
        self.category = category
        self.contentType = contentType
        self.createdBy = createdBy
        self.dateCreated = dateCreated
        self.dateEdited = dateEdited
        self.dragAndDrop = dragAndDrop
        self.editedBy = editedBy
        self.folderId = folderId
        self.id = id
        self.name = name
        self.responsive = responsive
        self.shareUrl = shareUrl
        self.thumbnail = thumbnail
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([TemplateInstanceLinksItem].self, forKey: .links)
        self.active = try container.decodeIfPresent(Bool.self, forKey: .active)
        self.category = try container.decodeIfPresent(String.self, forKey: .category)
        self.contentType = try container.decodeIfPresent(TemplateInstanceContentType.self, forKey: .contentType)
        self.createdBy = try container.decodeIfPresent(String.self, forKey: .createdBy)
        self.dateCreated = try container.decodeIfPresent(Date.self, forKey: .dateCreated)
        self.dateEdited = try container.decodeIfPresent(Date.self, forKey: .dateEdited)
        self.dragAndDrop = try container.decodeIfPresent(Bool.self, forKey: .dragAndDrop)
        self.editedBy = try container.decodeIfPresent(String.self, forKey: .editedBy)
        self.folderId = try container.decodeIfPresent(String.self, forKey: .folderId)
        self.id = try container.decodeIfPresent(Int.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.responsive = try container.decodeIfPresent(Bool.self, forKey: .responsive)
        self.shareUrl = try container.decodeIfPresent(String.self, forKey: .shareUrl)
        self.thumbnail = try container.decodeIfPresent(String.self, forKey: .thumbnail)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.active, forKey: .active)
        try container.encodeIfPresent(self.category, forKey: .category)
        try container.encodeIfPresent(self.contentType, forKey: .contentType)
        try container.encodeIfPresent(self.createdBy, forKey: .createdBy)
        try container.encodeIfPresent(self.dateCreated, forKey: .dateCreated)
        try container.encodeIfPresent(self.dateEdited, forKey: .dateEdited)
        try container.encodeIfPresent(self.dragAndDrop, forKey: .dragAndDrop)
        try container.encodeIfPresent(self.editedBy, forKey: .editedBy)
        try container.encodeIfPresent(self.folderId, forKey: .folderId)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.responsive, forKey: .responsive)
        try container.encodeIfPresent(self.shareUrl, forKey: .shareUrl)
        try container.encodeIfPresent(self.thumbnail, forKey: .thumbnail)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case active
        case category
        case contentType = "content_type"
        case createdBy = "created_by"
        case dateCreated = "date_created"
        case dateEdited = "date_edited"
        case dragAndDrop = "drag_and_drop"
        case editedBy = "edited_by"
        case folderId = "folder_id"
        case id
        case name
        case responsive
        case shareUrl = "share_url"
        case thumbnail
        case type
    }
}