import Foundation

/// An individual folder listed in the File Manager.
public struct GetFolderFileManagerResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [GetFolderFileManagerResponseLinksItem]?
    /// The date and time a file was added to the File Manager in ISO 8601 format.
    public let createdAt: Date?
    /// The username of the profile that created the folder.
    public let createdBy: String?
    /// The number of files in the folder.
    public let fileCount: Int?
    /// The unique id for the folder.
    public let id: Int?
    /// The name of the folder.
    public let name: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [GetFolderFileManagerResponseLinksItem]? = nil,
        createdAt: Date? = nil,
        createdBy: String? = nil,
        fileCount: Int? = nil,
        id: Int? = nil,
        name: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.fileCount = fileCount
        self.id = id
        self.name = name
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([GetFolderFileManagerResponseLinksItem].self, forKey: .links)
        self.createdAt = try container.decodeIfPresent(Date.self, forKey: .createdAt)
        self.createdBy = try container.decodeIfPresent(String.self, forKey: .createdBy)
        self.fileCount = try container.decodeIfPresent(Int.self, forKey: .fileCount)
        self.id = try container.decodeIfPresent(Int.self, forKey: .id)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.createdBy, forKey: .createdBy)
        try container.encodeIfPresent(self.fileCount, forKey: .fileCount)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.name, forKey: .name)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case createdAt = "created_at"
        case createdBy = "created_by"
        case fileCount = "file_count"
        case id
        case name
    }
}