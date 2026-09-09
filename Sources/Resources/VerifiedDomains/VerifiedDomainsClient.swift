import Foundation

public final class VerifiedDomainsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Get all of the sending domains on the account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.verifiedDomains.list()
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(requestOptions: RequestOptions? = nil) async throws -> ListVerifiedDomainsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/verified-domains",
            requestOptions: requestOptions,
            responseType: ListVerifiedDomainsResponse.self
        )
    }

    /// Add a domain to the account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.verifiedDomains.create(request: .init(verificationEmail: "verification_email"))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreateVerifiedDomainsRequest, requestOptions: RequestOptions? = nil) async throws -> CreateVerifiedDomainsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/verified-domains",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateVerifiedDomainsResponse.self
        )
    }

    /// Get the details for a single domain on the account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.verifiedDomains.get(domainName: "domain_name")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter domainName: The domain name.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(domainName: String, requestOptions: RequestOptions? = nil) async throws -> GetVerifiedDomainsResponse {
        return try await httpClient.performRequest(
            method: .get,
            path: "/3.0/verified-domains/\(domainName)",
            requestOptions: requestOptions,
            responseType: GetVerifiedDomainsResponse.self
        )
    }

    /// Delete a verified domain from the account.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.verifiedDomains.delete(domainName: "domain_name")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter domainName: The domain name.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(domainName: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/3.0/verified-domains/\(domainName)",
            requestOptions: requestOptions
        )
    }

    /// Verify a domain for sending.
    ///
    /// ```swift
    /// import Foundation
    /// import Mailchimp
    ///
    /// private func main() async throws {
    ///     let client = MailchimpClient(token: "<token>")
    ///
    ///     _ = try await client.verifiedDomains.createActionVerify(
    ///         domainName: "domain_name",
    ///         request: .init(code: "code")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter domainName: The domain name.
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createActionVerify(domainName: String, request: Requests.CreateActionVerifyVerifiedDomainsRequest, requestOptions: RequestOptions? = nil) async throws -> CreateActionVerifyVerifiedDomainsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/3.0/verified-domains/\(domainName)/actions/verify",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateActionVerifyVerifiedDomainsResponse.self
        )
    }
}