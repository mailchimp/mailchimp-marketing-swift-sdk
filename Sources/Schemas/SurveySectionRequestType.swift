import Foundation

/// The section type.
public enum SurveySectionRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case introduction
    case context
    case question
}