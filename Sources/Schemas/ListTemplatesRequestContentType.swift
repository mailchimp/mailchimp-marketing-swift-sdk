import Foundation

public enum ListTemplatesRequestContentType: String, Codable, Hashable, CaseIterable, Sendable {
    case html
    case template
    case multichannel
}