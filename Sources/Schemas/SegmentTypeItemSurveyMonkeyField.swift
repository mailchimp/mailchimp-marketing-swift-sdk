import Foundation

/// Segment by interaction with a SurveyMonkey survey.
public enum SegmentTypeItemSurveyMonkeyField: String, Codable, Hashable, CaseIterable, Sendable {
    case surveyMonkey = "survey_monkey"
}