import Foundation

/// The [type](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for the merge field.
public enum SurveyQuestionReportMergeFieldType: String, Codable, Hashable, CaseIterable, Sendable {
    case text
    case number
    case address
    case phone
    case date
    case url
    case imageurl
    case radio
    case dropdown
    case birthday
    case zip
}