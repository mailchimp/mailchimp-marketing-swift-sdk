import Foundation

/// A list of available images and files stored in the File Manager for the account.
public struct ListFolderFilesFileManagerResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [ListFolderFilesFileManagerResponseLinksItem]?
    ///  A list of files and images in an account.
    public let files: [GalleryFile]?
    /// The total size of all File Manager files in bytes.
    public let totalFileSize: Double?
    /// The total number of items matching the query regardless of pagination.
    public let totalItems: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [ListFolderFilesFileManagerResponseLinksItem]? = nil,
        files: [GalleryFile]? = nil,
        totalFileSize: Double? = nil,
        totalItems: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.files = files
        self.totalFileSize = totalFileSize
        self.totalItems = totalItems
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([ListFolderFilesFileManagerResponseLinksItem].self, forKey: .links)
        self.files = try container.decodeIfPresent([GalleryFile].self, forKey: .files)
        self.totalFileSize = try container.decodeIfPresent(Double.self, forKey: .totalFileSize)
        self.totalItems = try container.decodeIfPresent(Int.self, forKey: .totalItems)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.files, forKey: .files)
        try container.encodeIfPresent(self.totalFileSize, forKey: .totalFileSize)
        try container.encodeIfPresent(self.totalItems, forKey: .totalItems)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case files
        case totalFileSize = "total_file_size"
        case totalItems = "total_items"
    }
}