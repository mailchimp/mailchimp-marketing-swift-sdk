import Foundation

/// The status of a batch request
public struct Batch: Codable, Hashable, Sendable {
    /// A list of link types and descriptions for the API schema documents.
    public let links: [BatchLinksItem]?
    /// The date and time when all operations in the batch request completed in ISO 8601 format.
    public let completedAt: BatchCompletedAt?
    /// The number of completed operations that returned an error.
    public let erroredOperations: Int?
    /// The number of completed operations. This includes operations that returned an error.
    public let finishedOperations: Int?
    /// A string that uniquely identifies this batch request.
    public let id: String?
    /// The URL of the gzipped archive of the results of all the operations.
    public let responseBodyUrl: String?
    /// The status of the batch call. [Learn more](https://mailchimp.com/developer/marketing/guides/run-async-requests-batch-endpoint/#check-the-status-of-a-batch-operation) about the batch operation status.
    public let status: BatchStatus?
    /// The date and time when the server received the batch request in ISO 8601 format.
    public let submittedAt: Date?
    /// The total number of operations to complete as part of this batch request. For GET requests requiring pagination, each page counts as a separate operation.
    public let totalOperations: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        links: [BatchLinksItem]? = nil,
        completedAt: BatchCompletedAt? = nil,
        erroredOperations: Int? = nil,
        finishedOperations: Int? = nil,
        id: String? = nil,
        responseBodyUrl: String? = nil,
        status: BatchStatus? = nil,
        submittedAt: Date? = nil,
        totalOperations: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.links = links
        self.completedAt = completedAt
        self.erroredOperations = erroredOperations
        self.finishedOperations = finishedOperations
        self.id = id
        self.responseBodyUrl = responseBodyUrl
        self.status = status
        self.submittedAt = submittedAt
        self.totalOperations = totalOperations
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.links = try container.decodeIfPresent([BatchLinksItem].self, forKey: .links)
        self.completedAt = try container.decodeIfPresent(BatchCompletedAt.self, forKey: .completedAt)
        self.erroredOperations = try container.decodeIfPresent(Int.self, forKey: .erroredOperations)
        self.finishedOperations = try container.decodeIfPresent(Int.self, forKey: .finishedOperations)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.responseBodyUrl = try container.decodeIfPresent(String.self, forKey: .responseBodyUrl)
        self.status = try container.decodeIfPresent(BatchStatus.self, forKey: .status)
        self.submittedAt = try container.decodeIfPresent(Date.self, forKey: .submittedAt)
        self.totalOperations = try container.decodeIfPresent(Int.self, forKey: .totalOperations)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.links, forKey: .links)
        try container.encodeIfPresent(self.completedAt, forKey: .completedAt)
        try container.encodeIfPresent(self.erroredOperations, forKey: .erroredOperations)
        try container.encodeIfPresent(self.finishedOperations, forKey: .finishedOperations)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.responseBodyUrl, forKey: .responseBodyUrl)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.submittedAt, forKey: .submittedAt)
        try container.encodeIfPresent(self.totalOperations, forKey: .totalOperations)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case links = "_links"
        case completedAt = "completed_at"
        case erroredOperations = "errored_operations"
        case finishedOperations = "finished_operations"
        case id
        case responseBodyUrl = "response_body_url"
        case status
        case submittedAt = "submitted_at"
        case totalOperations = "total_operations"
    }
}