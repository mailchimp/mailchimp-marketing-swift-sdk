import Foundation

public struct CreateBatchesRequestOperationsItem: Codable, Hashable, Sendable {
    /// A string containing the JSON body to use with the request.
    public let body: String?
    /// Any HTTP headers to include with the request.
    public let headers: CreateBatchesRequestOperationsItemHeaders?
    /// The HTTP method to use for the operation.
    public let method: CreateBatchesRequestOperationsItemMethod
    /// An optional client-supplied id returned with the operation results.
    public let operationId: String?
    /// Any request query parameters. Example parameters: {"count":10, "offset":0}
    public let params: CreateBatchesRequestOperationsItemParams?
    /// The relative path to use for the operation.
    public let path: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        body: String? = nil,
        headers: CreateBatchesRequestOperationsItemHeaders? = nil,
        method: CreateBatchesRequestOperationsItemMethod,
        operationId: String? = nil,
        params: CreateBatchesRequestOperationsItemParams? = nil,
        path: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.body = body
        self.headers = headers
        self.method = method
        self.operationId = operationId
        self.params = params
        self.path = path
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.body = try container.decodeIfPresent(String.self, forKey: .body)
        self.headers = try container.decodeIfPresent(CreateBatchesRequestOperationsItemHeaders.self, forKey: .headers)
        self.method = try container.decode(CreateBatchesRequestOperationsItemMethod.self, forKey: .method)
        self.operationId = try container.decodeIfPresent(String.self, forKey: .operationId)
        self.params = try container.decodeIfPresent(CreateBatchesRequestOperationsItemParams.self, forKey: .params)
        self.path = try container.decode(String.self, forKey: .path)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.body, forKey: .body)
        try container.encodeIfPresent(self.headers, forKey: .headers)
        try container.encode(self.method, forKey: .method)
        try container.encodeIfPresent(self.operationId, forKey: .operationId)
        try container.encodeIfPresent(self.params, forKey: .params)
        try container.encode(self.path, forKey: .path)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case body
        case headers
        case method
        case operationId = "operation_id"
        case params
        case path
    }
}