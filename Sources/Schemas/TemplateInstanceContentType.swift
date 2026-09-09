import Foundation

/// How the template's content is put together.
public enum TemplateInstanceContentType: String, Codable, Hashable, CaseIterable, Sendable {
    case template
    case multichannel
    case html
}