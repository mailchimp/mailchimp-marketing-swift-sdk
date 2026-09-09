import Foundation

/// The HTTP method to use for the operation.
public enum CreateBatchesRequestOperationsItemMethod: String, Codable, Hashable, CaseIterable, Sendable {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}