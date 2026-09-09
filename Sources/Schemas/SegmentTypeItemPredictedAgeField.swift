import Foundation

/// Segment by predicted age.
public enum SegmentTypeItemPredictedAgeField: String, Codable, Hashable, CaseIterable, Sendable {
    case predictedAgeRange = "predicted_age_range"
}