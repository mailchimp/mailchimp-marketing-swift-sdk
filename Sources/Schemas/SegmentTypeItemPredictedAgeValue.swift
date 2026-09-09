import Foundation

/// The predicted age to segment.
public enum SegmentTypeItemPredictedAgeValue: String, Codable, Hashable, CaseIterable, Sendable {
    case eighteen24 = "18-24"
    case twentyFive34 = "25-34"
    case thirtyFive44 = "35-44"
    case fortyFive54 = "45-54"
    case fiftyFive64 = "55-64"
    case sixtyFive = "65+"
}