import Foundation

public final class CustomerJourneysClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// A step trigger in an Automation flow. To use it, create a starting point or step from the Automation flow builder in the app using the Customer Journeys API condition. We’ll provide a url during the process that includes the {journey_id} and {step_id}. You’ll then be able to use this endpoint to trigger the condition for the posted contact.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.customerJourneys.createJourneyStepActionTrigger(
    ///         journeyId: "1",
    ///         stepId: "1",
    ///         request: .init(emailAddress: "email_address")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter journeyId: The id for the flow.
    /// - Parameter stepId: The id for the Step.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createJourneyStepActionTrigger(journeyId: String, stepId: String, request: Requests.CreateJourneyStepActionTriggerCustomerJourneysRequest, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/customer-journeys/journeys/\(journeyId)/steps/\(stepId)/actions/trigger",
            body: request,
            requestOptions: requestOptions
        )
    }
}