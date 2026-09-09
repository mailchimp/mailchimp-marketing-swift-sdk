import Foundation

/// An account export.
public struct GetAccountExportsResponse: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [GetAccountExportsResponseLinksItem]?
    /// If the export is finished, the download URL for an export. URLs are only valid for 90 days after the export completes.
    public let downloadUrl: String?
    /// The ID for the export.
    public let exportId: Int?
    /// If finished, the finish time for the export.
    public let finished: Date?
    /// The size of the uncompressed export in bytes.
    public let sizeInBytes: Int?
    /// Start time for the export.
    public let started: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [GetAccountExportsResponseLinksItem]? = nil,
        downloadUrl: String? = nil,
        exportId: Int? = nil,
        finished: Date? = nil,
        sizeInBytes: Int? = nil,
        started: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.downloadUrl = downloadUrl
        self.exportId = exportId
        self.finished = finished
        self.sizeInBytes = sizeInBytes
        self.started = started
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([GetAccountExportsResponseLinksItem].self, forKey: .links)
        self.downloadUrl = try container.decodeIfPresent(String.self, forKey: .downloadUrl)
        self.exportId = try container.decodeIfPresent(Int.self, forKey: .exportId)
        self.finished = try container.decodeIfPresent(Date.self, forKey: .finished)
        self.sizeInBytes = try container.decodeIfPresent(Int.self, forKey: .sizeInBytes)
        self.started = try container.decodeIfPresent(Date.self, forKey: .started)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.downloadUrl, forKey: .downloadUrl)
        try container.encodeIfPresent(self.exportId, forKey: .exportId)
        try container.encodeIfPresent(self.finished, forKey: .finished)
        try container.encodeIfPresent(self.sizeInBytes, forKey: .sizeInBytes)
        try container.encodeIfPresent(self.started, forKey: .started)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case downloadUrl = "download_url"
        case exportId = "export_id"
        case finished
        case sizeInBytes = "size_in_bytes"
        case started
    }
}