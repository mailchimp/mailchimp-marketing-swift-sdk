import Foundation

public enum PatchAudienceContactRequestMergeFieldValidationMode: String, Codable, Hashable, CaseIterable, Sendable {
    case ignoreRequiredChecks = "ignore_required_checks"
    case strict
}