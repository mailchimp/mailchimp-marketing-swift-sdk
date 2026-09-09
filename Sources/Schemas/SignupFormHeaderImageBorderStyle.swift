import Foundation

/// Image border style.
public enum SignupFormHeaderImageBorderStyle: String, Codable, Hashable, CaseIterable, Sendable {
    case none
    case solid
    case dotted
    case dashed
    case double
    case groove
    case outset
    case inset
    case ridge
}