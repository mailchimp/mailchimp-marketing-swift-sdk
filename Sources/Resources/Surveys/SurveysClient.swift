import Foundation

public final class SurveysClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Utilize the List ID and Survey ID to generate a Campaign that links to your survey.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.surveys.createListSurveyActionCreateEmail(
    ///         listId: "list_id",
    ///         surveyId: "survey_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter surveyId: The ID of the survey.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createListSurveyActionCreateEmail(listId: String, surveyId: String, requestOptions: RequestOptions? = nil) async throws -> Campaign {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/surveys/\(surveyId)/actions/create-email",
            requestOptions: requestOptions,
            responseType: Campaign.self
        )
    }

    /// Publish a survey that is in draft, unpublished, or has been previously published and edited.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.surveys.createListSurveyActionPublish(
    ///         listId: "list_id",
    ///         surveyId: "survey_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter surveyId: The ID of the survey.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createListSurveyActionPublish(listId: String, surveyId: String, requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/surveys/\(surveyId)/actions/publish",
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }

    /// Unpublish a survey that has been published.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.surveys.createListSurveyActionUnpublish(
    ///         listId: "list_id",
    ///         surveyId: "survey_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter listId: The unique ID for the list.
    /// - Parameter surveyId: The ID of the survey.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createListSurveyActionUnpublish(listId: String, surveyId: String, requestOptions: RequestOptions? = nil) async throws -> JSONValue {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/lists/\(listId)/surveys/\(surveyId)/actions/unpublish",
            requestOptions: requestOptions,
            responseType: JSONValue.self
        )
    }
}