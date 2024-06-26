//
// TransactionAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class TransactionAPI {

    /**
     PreValidate deposit of resources to an account
     
     - parameter accountDepositPreValidationRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func accountDepositPreValidation(accountDepositPreValidationRequest: AccountDepositPreValidationRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AccountDepositPreValidationResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return accountDepositPreValidationWithRequestBuilder(accountDepositPreValidationRequest: accountDepositPreValidationRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     PreValidate deposit of resources to an account
     - POST /transaction/account-deposit-pre-validation
     - Helper endpoint that allows pre-validation if a deposit of certain resources to a given account can succeed or not. It is only meant for pre-validation usage, it does not guarantee that execution will succeed. 
     - parameter accountDepositPreValidationRequest: (body)  
     - returns: RequestBuilder<AccountDepositPreValidationResponse> 
     */
    open class func accountDepositPreValidationWithRequestBuilder(accountDepositPreValidationRequest: AccountDepositPreValidationRequest) -> RequestBuilder<AccountDepositPreValidationResponse> {
        let localVariablePath = "/transaction/account-deposit-pre-validation"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: accountDepositPreValidationRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountDepositPreValidationResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get Committed Transaction Details
     
     - parameter transactionCommittedDetailsRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func transactionCommittedDetails(transactionCommittedDetailsRequest: TransactionCommittedDetailsRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TransactionCommittedDetailsResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return transactionCommittedDetailsWithRequestBuilder(transactionCommittedDetailsRequest: transactionCommittedDetailsRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Committed Transaction Details
     - POST /transaction/committed-details
     - Returns the committed details and receipt of the transaction for a given transaction identifier. Transaction identifiers which don't correspond to a committed transaction will return a `TransactionNotFoundError`. 
     - parameter transactionCommittedDetailsRequest: (body)  
     - returns: RequestBuilder<TransactionCommittedDetailsResponse> 
     */
    open class func transactionCommittedDetailsWithRequestBuilder(transactionCommittedDetailsRequest: TransactionCommittedDetailsRequest) -> RequestBuilder<TransactionCommittedDetailsResponse> {
        let localVariablePath = "/transaction/committed-details"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: transactionCommittedDetailsRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransactionCommittedDetailsResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get Construction Metadata
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func transactionConstruction(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TransactionConstructionResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return transactionConstructionWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Construction Metadata
     - POST /transaction/construction
     - Returns information needed to construct a new transaction including current `epoch` number. 
     - returns: RequestBuilder<TransactionConstructionResponse> 
     */
    open class func transactionConstructionWithRequestBuilder() -> RequestBuilder<TransactionConstructionResponse> {
        let localVariablePath = "/transaction/construction"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransactionConstructionResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Preview Transaction
     
     - parameter transactionPreviewRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func transactionPreview(transactionPreviewRequest: TransactionPreviewRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TransactionPreviewResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return transactionPreviewWithRequestBuilder(transactionPreviewRequest: transactionPreviewRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Preview Transaction
     - POST /transaction/preview
     - Previews transaction against the network. This endpoint is effectively a proxy towards the Core API `/v0/transaction/preview` endpoint. See the Core API documentation for more details. 
     - parameter transactionPreviewRequest: (body)  
     - returns: RequestBuilder<TransactionPreviewResponse> 
     */
    open class func transactionPreviewWithRequestBuilder(transactionPreviewRequest: TransactionPreviewRequest) -> RequestBuilder<TransactionPreviewResponse> {
        let localVariablePath = "/transaction/preview"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: transactionPreviewRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransactionPreviewResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get Transaction Status
     
     - parameter transactionStatusRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func transactionStatus(transactionStatusRequest: TransactionStatusRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TransactionStatusResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return transactionStatusWithRequestBuilder(transactionStatusRequest: transactionStatusRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Transaction Status
     - POST /transaction/status
     - Returns overall transaction status and all of its known payloads based on supplied intent hash. 
     - parameter transactionStatusRequest: (body)  
     - returns: RequestBuilder<TransactionStatusResponse> 
     */
    open class func transactionStatusWithRequestBuilder(transactionStatusRequest: TransactionStatusRequest) -> RequestBuilder<TransactionStatusResponse> {
        let localVariablePath = "/transaction/status"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: transactionStatusRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransactionStatusResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Submit Transaction
     
     - parameter transactionSubmitRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func transactionSubmit(transactionSubmitRequest: TransactionSubmitRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TransactionSubmitResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return transactionSubmitWithRequestBuilder(transactionSubmitRequest: transactionSubmitRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Submit Transaction
     - POST /transaction/submit
     - Submits a signed transaction payload to the network. 
     - parameter transactionSubmitRequest: (body)  
     - returns: RequestBuilder<TransactionSubmitResponse> 
     */
    open class func transactionSubmitWithRequestBuilder(transactionSubmitRequest: TransactionSubmitRequest) -> RequestBuilder<TransactionSubmitResponse> {
        let localVariablePath = "/transaction/submit"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: transactionSubmitRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransactionSubmitResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
