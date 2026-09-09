import Foundation

/// The HTTP method that should be used when accessing the URL defined in 'href'.
public enum ECommerceProductImagesItemLinksItemMethod: String, Codable, Hashable, CaseIterable, Sendable {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
    case options = "OPTIONS"
    case head = "HEAD"
}