import Foundation

public enum PatchAudienceContactRequestDataMode: String, Codable, Hashable, CaseIterable, Sendable {
    case historical
    case live
}