import Foundation

public enum CreateAudienceContactRequestDataMode: String, Codable, Hashable, CaseIterable, Sendable {
    case historical
    case live
}