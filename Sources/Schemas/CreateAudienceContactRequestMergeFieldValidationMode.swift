import Foundation

public enum CreateAudienceContactRequestMergeFieldValidationMode: String, Codable, Hashable, CaseIterable, Sendable {
    case ignoreRequiredChecks = "ignore_required_checks"
    case strict
}