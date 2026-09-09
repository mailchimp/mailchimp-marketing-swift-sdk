import Foundation

/// An individual file listed in the File Manager.
public struct GalleryFile: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [GalleryFileLinksItem]?
    /// The date and time a file was added to the File Manager in ISO 8601 format.
    public let createdAt: Date?
    /// The username of the profile that uploaded the file.
    public let createdBy: String?
    /// The id of the folder.
    public let folderId: Int?
    /// The url of the full-size file.
    public let fullSizeUrl: String?
    /// The height of an image.
    public let height: Int?
    /// The unique id of the file.
    public let id: Int?
    /// The name of the file.
    public let name: String?
    /// The size of the file in bytes.
    public let size: Int?
    /// The url of the thumbnail preview.
    public let thumbnailUrl: String?
    /// The type of file in the File Manager.
    public let type: GalleryFileType?
    /// The width of the image.
    public let width: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [GalleryFileLinksItem]? = nil,
        createdAt: Date? = nil,
        createdBy: String? = nil,
        folderId: Int? = nil,
        fullSizeUrl: String? = nil,
        height: Int? = nil,
        id: Int? = nil,
        name: String? = nil,
        size: Int? = nil,
        thumbnailUrl: String? = nil,
        type: GalleryFileType? = nil,
        width: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.folderId = folderId
        self.fullSizeUrl = fullSizeUrl
        self.height = height
        self.id = id
        self.name = name
        self.size = size
        self.thumbnailUrl = thumbnailUrl
        self.type = type
        self.width = width
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([GalleryFileLinksItem].self, forKey: .links)
        self.createdAt = try container.decodeIfPresent(Date.self, forKey: .createdAt)
        self.createdBy = try container.decodeIfPresent(String.self, forKey: .createdBy)
        self.folderId = try container.decodeIfPresent(Int.self, forKey: .folderId)
        self.fullSizeUrl = try container.decodeIfPresent(String.self, forKey: .fullSizeUrl)
        self.height = try container.decodeIfPresent(Int.self, forKey: .height)
        self.id = try container.decodeIfPresent(Int.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.size = try container.decodeIfPresent(Int.self, forKey: .size)
        self.thumbnailUrl = try container.decodeIfPresent(String.self, forKey: .thumbnailUrl)
        self.type = try container.decodeIfPresent(GalleryFileType.self, forKey: .type)
        self.width = try container.decodeIfPresent(Int.self, forKey: .width)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.createdBy, forKey: .createdBy)
        try container.encodeIfPresent(self.folderId, forKey: .folderId)
        try container.encodeIfPresent(self.fullSizeUrl, forKey: .fullSizeUrl)
        try container.encodeIfPresent(self.height, forKey: .height)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.size, forKey: .size)
        try container.encodeIfPresent(self.thumbnailUrl, forKey: .thumbnailUrl)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.width, forKey: .width)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case createdAt = "created_at"
        case createdBy = "created_by"
        case folderId = "folder_id"
        case fullSizeUrl = "full_size_url"
        case height
        case id
        case name
        case size
        case thumbnailUrl = "thumbnail_url"
        case type
        case width
    }
}