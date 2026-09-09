import Foundation

/// The status of the batch call. [Learn more](https://mailchimp.com/developer/marketing/guides/run-async-requests-batch-endpoint/#check-the-status-of-a-batch-operation) about the batch operation status.
public enum BatchStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case preprocessing
    case started
    case finalizing
    case finished
}