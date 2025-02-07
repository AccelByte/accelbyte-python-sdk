# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import HeaderStr
from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import deprecated
from ....core import same_doc_as

from ..models import BulkCreditRequest
from ..models import BulkCreditResult
from ..models import BulkDebitRequest
from ..models import BulkDebitResult
from ..models import CreditRequest
from ..models import CurrencyWallet
from ..models import DebitByCurrencyCodeRequest
from ..models import DebitByWalletPlatformRequest
from ..models import DebitRequest
from ..models import DetailedWalletTransactionPagingSlicedResult
from ..models import ErrorEntity
from ..models import PaymentRequest
from ..models import PlatformWallet
from ..models import PlatformWalletConfigInfo
from ..models import PlatformWalletConfigUpdate
from ..models import ValidationErrorEntity
from ..models import WalletConfigInfo
from ..models import WalletConfigUpdate
from ..models import WalletInfo
from ..models import WalletPagingSlicedResult
from ..models import WalletTransactionPagingSlicedResult

from ..operations.wallet import BulkCredit
from ..operations.wallet import BulkDebit
from ..operations.wallet import CheckBalance
from ..operations.wallet import CheckWallet
from ..operations.wallet import CheckWalletOriginEnum
from ..operations.wallet import CreditUserWallet
from ..operations.wallet import DebitByWalletPlatform
from ..operations.wallet import DebitUserWallet
from ..operations.wallet import DebitUserWalletByCurrencyCode
from ..operations.wallet import DisableUserWallet
from ..operations.wallet import EnableUserWallet
from ..operations.wallet import GetPlatformWalletConfig
from ..operations.wallet import GetPlatformWalletConfigPlatformEnum
from ..operations.wallet import GetUserWallet
from ..operations.wallet import GetWallet
from ..operations.wallet import GetWalletConfig
from ..operations.wallet import ListUserCurrencyTransactions
from ..operations.wallet import ListUserWalletTransactions
from ..operations.wallet import PayWithUserWallet
from ..operations.wallet import PublicGetMyWallet
from ..operations.wallet import PublicGetWallet
from ..operations.wallet import PublicListUserWalletTransactions
from ..operations.wallet import QueryUserCurrencyWallets
from ..operations.wallet import QueryWallets
from ..operations.wallet import QueryWalletsOriginEnum
from ..operations.wallet import ResetPlatformWalletConfig
from ..operations.wallet import ResetPlatformWalletConfigPlatformEnum
from ..operations.wallet import UpdatePlatformWalletConfig
from ..operations.wallet import UpdatePlatformWalletConfigPlatformEnum
from ..operations.wallet import UpdateWalletConfig
from ..models import BulkCreditResultStatusEnum
from ..models import BulkDebitResultStatusEnum
from ..models import CreditRequestOriginEnum, CreditRequestSourceEnum
from ..models import (
    DebitByCurrencyCodeRequestBalanceOriginEnum,
    DebitByCurrencyCodeRequestBalanceSourceEnum,
)
from ..models import (
    DebitByWalletPlatformRequestDebitBalanceSourceEnum,
    DebitByWalletPlatformRequestWalletPlatformEnum,
)
from ..models import DebitRequestBalanceSourceEnum
from ..models import PaymentRequestWalletPlatformEnum
from ..models import PlatformWalletStatusEnum, PlatformWalletWalletStatusEnum
from ..models import PlatformWalletConfigUpdateAllowedBalanceOriginsEnum
from ..models import WalletInfoStatusEnum


@same_doc_as(BulkCredit)
def bulk_credit(
    body: List[BulkCreditRequest],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Credit different users' wallets (bulkCredit)

    Credit different users' wallets.
    Other detail info:

      * Returns : bulk credit result

    Properties:
        url: /platform/admin/namespaces/{namespace}/wallets/credit

        method: POST

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkCreditRequest] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - BulkCreditResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkCredit.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkCredit)
async def bulk_credit_async(
    body: List[BulkCreditRequest],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Credit different users' wallets (bulkCredit)

    Credit different users' wallets.
    Other detail info:

      * Returns : bulk credit result

    Properties:
        url: /platform/admin/namespaces/{namespace}/wallets/credit

        method: POST

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkCreditRequest] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - BulkCreditResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkCredit.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkDebit)
def bulk_debit(
    body: List[BulkDebitRequest],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Debit different users' wallets (bulkDebit)

    Debit different users' wallets.
    Other detail info:

      * Returns : bulk credit result

    Properties:
        url: /platform/admin/namespaces/{namespace}/wallets/debit

        method: POST

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkDebitRequest] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - BulkDebitResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkDebit.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkDebit)
async def bulk_debit_async(
    body: List[BulkDebitRequest],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Debit different users' wallets (bulkDebit)

    Debit different users' wallets.
    Other detail info:

      * Returns : bulk credit result

    Properties:
        url: /platform/admin/namespaces/{namespace}/wallets/debit

        method: POST

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[BulkDebitRequest] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - BulkDebitResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkDebit.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CheckBalance)
def check_balance(
    currency_code: str,
    request: DebitByWalletPlatformRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check if a user has enough balance (checkBalance)

    Checks if the user has enough balance based on the provided criteria.
    Other detail info:

      * Returns : boolean value indicating if the user has enough balance

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/balanceCheck

        method: POST

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        request: (request) REQUIRED DebitByWalletPlatformRequest in body

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - (Successfully determined if user has enough balance.)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CheckBalance.create(
        currency_code=currency_code,
        request=request,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CheckBalance)
async def check_balance_async(
    currency_code: str,
    request: DebitByWalletPlatformRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check if a user has enough balance (checkBalance)

    Checks if the user has enough balance based on the provided criteria.
    Other detail info:

      * Returns : boolean value indicating if the user has enough balance

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/balanceCheck

        method: POST

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        request: (request) REQUIRED DebitByWalletPlatformRequest in body

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - (Successfully determined if user has enough balance.)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CheckBalance.create(
        currency_code=currency_code,
        request=request,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(CheckWallet)
def check_wallet(
    currency_code: str,
    origin: Union[str, CheckWalletOriginEnum],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check wallet by balance origin and currency code (checkWallet)

    [SERVICE COMMUNICATION ONLY] Check wallet by balance origin and currency code whether it's inactive.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/check

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        origin: (origin) REQUIRED Union[str, OriginEnum] in query

    Responses:
        204: No Content - (check successfully)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive)

        409: Conflict - ErrorEntity (20006: optimistic lock)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CheckWallet.create(
        currency_code=currency_code,
        origin=origin,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(CheckWallet)
async def check_wallet_async(
    currency_code: str,
    origin: Union[str, CheckWalletOriginEnum],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check wallet by balance origin and currency code (checkWallet)

    [SERVICE COMMUNICATION ONLY] Check wallet by balance origin and currency code whether it's inactive.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/check

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        origin: (origin) REQUIRED Union[str, OriginEnum] in query

    Responses:
        204: No Content - (check successfully)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive)

        409: Conflict - ErrorEntity (20006: optimistic lock)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CheckWallet.create(
        currency_code=currency_code,
        origin=origin,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreditUserWallet)
def credit_user_wallet(
    body: CreditRequest,
    currency_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Credit a user wallet by currency code and balance origin (creditUserWallet)

    Credit a user wallet by currency code and balance origin, if wallet not exists, it will create a new wallet.
    Other detail info:

    (UPDATE)

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/credit

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CreditRequest in body

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - WalletInfo (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreditUserWallet.create(
        body=body,
        currency_code=currency_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreditUserWallet)
async def credit_user_wallet_async(
    body: CreditRequest,
    currency_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Credit a user wallet by currency code and balance origin (creditUserWallet)

    Credit a user wallet by currency code and balance origin, if wallet not exists, it will create a new wallet.
    Other detail info:

    (UPDATE)

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/credit

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CreditRequest in body

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - WalletInfo (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreditUserWallet.create(
        body=body,
        currency_code=currency_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DebitByWalletPlatform)
def debit_by_wallet_platform(
    currency_code: str,
    request: DebitByWalletPlatformRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Debit user wallet by currency code and client platform (debitByWalletPlatform)

    Debit user wallet by currency code and client platform.
    Other detail info:




    ## Restrictions for metadata


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/debitByWalletPlatform

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        request: (request) REQUIRED DebitByWalletPlatformRequest in body

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - PlatformWallet (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DebitByWalletPlatform.create(
        currency_code=currency_code,
        request=request,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DebitByWalletPlatform)
async def debit_by_wallet_platform_async(
    currency_code: str,
    request: DebitByWalletPlatformRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Debit user wallet by currency code and client platform (debitByWalletPlatform)

    Debit user wallet by currency code and client platform.
    Other detail info:




    ## Restrictions for metadata


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/debitByWalletPlatform

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        request: (request) REQUIRED DebitByWalletPlatformRequest in body

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - PlatformWallet (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DebitByWalletPlatform.create(
        currency_code=currency_code,
        request=request,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DebitUserWallet)
def debit_user_wallet(
    body: DebitRequest,
    user_id: str,
    wallet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Debit a user wallet (debitUserWallet)

    Debit a user wallet.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/debit

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DebitRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        wallet_id: (walletId) REQUIRED str in path

    Responses:
        200: OK - WalletInfo (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance)

        404: Not Found - ErrorEntity (35141: Wallet [{walletId}] does not exist)

        409: Conflict - ErrorEntity (20006: optimistic lock)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DebitUserWallet.create(
        body=body,
        user_id=user_id,
        wallet_id=wallet_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DebitUserWallet)
async def debit_user_wallet_async(
    body: DebitRequest,
    user_id: str,
    wallet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Debit a user wallet (debitUserWallet)

    Debit a user wallet.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/debit

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DebitRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        wallet_id: (walletId) REQUIRED str in path

    Responses:
        200: OK - WalletInfo (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance)

        404: Not Found - ErrorEntity (35141: Wallet [{walletId}] does not exist)

        409: Conflict - ErrorEntity (20006: optimistic lock)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DebitUserWallet.create(
        body=body,
        user_id=user_id,
        wallet_id=wallet_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DebitUserWalletByCurrencyCode)
def debit_user_wallet_by_currency_code(
    body: DebitByCurrencyCodeRequest,
    currency_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Debit a user wallet by currency code (debitUserWalletByCurrencyCode)

    Debit a user wallet by currency code, default is debit system wallet.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/debit

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DebitByCurrencyCodeRequest in body

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - WalletInfo (successful operation)

        400: Bad Request - ErrorEntity (35124: Wallet [{currencyCode}] has insufficient balance)

        409: Conflict - ErrorEntity (20006: optimistic lock)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DebitUserWalletByCurrencyCode.create(
        body=body,
        currency_code=currency_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DebitUserWalletByCurrencyCode)
async def debit_user_wallet_by_currency_code_async(
    body: DebitByCurrencyCodeRequest,
    currency_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Debit a user wallet by currency code (debitUserWalletByCurrencyCode)

    Debit a user wallet by currency code, default is debit system wallet.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/debit

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DebitByCurrencyCodeRequest in body

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - WalletInfo (successful operation)

        400: Bad Request - ErrorEntity (35124: Wallet [{currencyCode}] has insufficient balance)

        409: Conflict - ErrorEntity (20006: optimistic lock)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DebitUserWalletByCurrencyCode.create(
        body=body,
        currency_code=currency_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DisableUserWallet)
def disable_user_wallet(
    user_id: str,
    wallet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable a user wallet (disableUserWallet)

    disable a user wallet.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/disable

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        wallet_id: (walletId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        404: Not Found - ErrorEntity (35141: Wallet [{walletId}] does not exist)

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DisableUserWallet.create(
        user_id=user_id,
        wallet_id=wallet_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DisableUserWallet)
async def disable_user_wallet_async(
    user_id: str,
    wallet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Disable a user wallet (disableUserWallet)

    disable a user wallet.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/disable

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        wallet_id: (walletId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        404: Not Found - ErrorEntity (35141: Wallet [{walletId}] does not exist)

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DisableUserWallet.create(
        user_id=user_id,
        wallet_id=wallet_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(EnableUserWallet)
def enable_user_wallet(
    user_id: str,
    wallet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable a user wallet (enableUserWallet)

    enable a user wallet.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/enable

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        wallet_id: (walletId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        404: Not Found - ErrorEntity (35141: Wallet [{walletId}] does not exist)

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = EnableUserWallet.create(
        user_id=user_id,
        wallet_id=wallet_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(EnableUserWallet)
async def enable_user_wallet_async(
    user_id: str,
    wallet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Enable a user wallet (enableUserWallet)

    enable a user wallet.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/enable

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        wallet_id: (walletId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        404: Not Found - ErrorEntity (35141: Wallet [{walletId}] does not exist)

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = EnableUserWallet.create(
        user_id=user_id,
        wallet_id=wallet_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPlatformWalletConfig)
def get_platform_wallet_config(
    platform: Union[str, GetPlatformWalletConfigPlatformEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get platform wallet config list (getPlatformWalletConfig)

    Get platform wallet config list.
    Other detail info:

      * Returns : wallet info

    Properties:
        url: /platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED Union[str, PlatformEnum] in path

    Responses:
        200: OK - PlatformWalletConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPlatformWalletConfig.create(
        platform=platform,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPlatformWalletConfig)
async def get_platform_wallet_config_async(
    platform: Union[str, GetPlatformWalletConfigPlatformEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get platform wallet config list (getPlatformWalletConfig)

    Get platform wallet config list.
    Other detail info:

      * Returns : wallet info

    Properties:
        url: /platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED Union[str, PlatformEnum] in path

    Responses:
        200: OK - PlatformWalletConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPlatformWalletConfig.create(
        platform=platform,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetUserWallet)
def get_user_wallet(
    user_id: str,
    wallet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a user wallet (getUserWallet)

    get a user wallet.
    Other detail info:

      * Returns : wallet info

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        wallet_id: (walletId) REQUIRED str in path

    Responses:
        200: OK - WalletInfo (successful operation)

        404: Not Found - ErrorEntity (35141: Wallet [{walletId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserWallet.create(
        user_id=user_id,
        wallet_id=wallet_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetUserWallet)
async def get_user_wallet_async(
    user_id: str,
    wallet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a user wallet (getUserWallet)

    get a user wallet.
    Other detail info:

      * Returns : wallet info

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        wallet_id: (walletId) REQUIRED str in path

    Responses:
        200: OK - WalletInfo (successful operation)

        404: Not Found - ErrorEntity (35141: Wallet [{walletId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserWallet.create(
        user_id=user_id,
        wallet_id=wallet_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetWallet)
def get_wallet(
    wallet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a wallet by wallet id (getWallet)

    get a wallet by wallet id.
    Other detail info:

      * Returns : wallet info

    Properties:
        url: /platform/admin/namespaces/{namespace}/wallets/{walletId}

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        wallet_id: (walletId) REQUIRED str in path

    Responses:
        200: OK - WalletInfo (successful operation)

        404: Not Found - ErrorEntity (35141: Wallet [{walletId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetWallet.create(
        wallet_id=wallet_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetWallet)
async def get_wallet_async(
    wallet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a wallet by wallet id (getWallet)

    get a wallet by wallet id.
    Other detail info:

      * Returns : wallet info

    Properties:
        url: /platform/admin/namespaces/{namespace}/wallets/{walletId}

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        wallet_id: (walletId) REQUIRED str in path

    Responses:
        200: OK - WalletInfo (successful operation)

        404: Not Found - ErrorEntity (35141: Wallet [{walletId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetWallet.create(
        wallet_id=wallet_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetWalletConfig)
def get_wallet_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get wallet config of a namespace (getWalletConfig)

    get wallet config

    Properties:
        url: /platform/admin/namespaces/{namespace}/wallet/config

        method: GET

        tags: ["Wallet"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - WalletConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetWalletConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetWalletConfig)
async def get_wallet_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get wallet config of a namespace (getWalletConfig)

    get wallet config

    Properties:
        url: /platform/admin/namespaces/{namespace}/wallet/config

        method: GET

        tags: ["Wallet"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - WalletConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetWalletConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListUserCurrencyTransactions)
def list_user_currency_transactions(
    currency_code: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user currency transactions (listUserCurrencyTransactions)

    List user currency transactions ordered by create time desc.
    Other detail info:

      * Returns : currency transaction info

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/transactions

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - WalletTransactionPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (35141: Wallet [{walletId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListUserCurrencyTransactions.create(
        currency_code=currency_code,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListUserCurrencyTransactions)
async def list_user_currency_transactions_async(
    currency_code: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user currency transactions (listUserCurrencyTransactions)

    List user currency transactions ordered by create time desc.
    Other detail info:

      * Returns : currency transaction info

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/transactions

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - WalletTransactionPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (35141: Wallet [{walletId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListUserCurrencyTransactions.create(
        currency_code=currency_code,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(ListUserWalletTransactions)
def list_user_wallet_transactions(
    user_id: str,
    wallet_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user wallet transactions (listUserWalletTransactions)

    List user wallet transactions ordered by create time desc.
    Other detail info:

      * Returns : wallet transaction info

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/transactions

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        wallet_id: (walletId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - DetailedWalletTransactionPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (35141: Wallet [{walletId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListUserWalletTransactions.create(
        user_id=user_id,
        wallet_id=wallet_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(ListUserWalletTransactions)
async def list_user_wallet_transactions_async(
    user_id: str,
    wallet_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user wallet transactions (listUserWalletTransactions)

    List user wallet transactions ordered by create time desc.
    Other detail info:

      * Returns : wallet transaction info

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/transactions

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        wallet_id: (walletId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - DetailedWalletTransactionPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (35141: Wallet [{walletId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListUserWalletTransactions.create(
        user_id=user_id,
        wallet_id=wallet_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PayWithUserWallet)
def pay_with_user_wallet(
    body: PaymentRequest,
    currency_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Pay with user wallet by currency code and client platform (payWithUserWallet)

    Pay with user wallet by currency code and client platform.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/payment

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentRequest in body

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - PlatformWallet (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PayWithUserWallet.create(
        body=body,
        currency_code=currency_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PayWithUserWallet)
async def pay_with_user_wallet_async(
    body: PaymentRequest,
    currency_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Pay with user wallet by currency code and client platform (payWithUserWallet)

    Pay with user wallet by currency code and client platform.

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/payment

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PaymentRequest in body

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - PlatformWallet (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 35124: Wallet [{currencyCode}] has insufficient balance)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PayWithUserWallet.create(
        body=body,
        currency_code=currency_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetMyWallet)
def public_get_my_wallet(
    currency_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get my wallet by currency code and namespace (publicGetMyWallet)

    get my wallet by currency code and namespace.
    Other detail info:

      * Returns : wallet info
      *  Path's namespace :
        * can be filled with publisher namespace in order to get publisher user wallet
        * can be filled with game namespace in order to get game user wallet

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/wallets/{currencyCode}

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PlatformWallet (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetMyWallet.create(
        currency_code=currency_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetMyWallet)
async def public_get_my_wallet_async(
    currency_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get my wallet by currency code and namespace (publicGetMyWallet)

    get my wallet by currency code and namespace.
    Other detail info:

      * Returns : wallet info
      *  Path's namespace :
        * can be filled with publisher namespace in order to get publisher user wallet
        * can be filled with game namespace in order to get game user wallet

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/wallets/{currencyCode}

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PlatformWallet (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetMyWallet.create(
        currency_code=currency_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetWallet)
def public_get_wallet(
    currency_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a wallet by currency code (publicGetWallet)

    get a wallet by currency code.
    Other detail info:

      * Returns : wallet info

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - PlatformWallet (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetWallet.create(
        currency_code=currency_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetWallet)
async def public_get_wallet_async(
    currency_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a wallet by currency code (publicGetWallet)

    get a wallet by currency code.
    Other detail info:

      * Returns : wallet info

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - PlatformWallet (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetWallet.create(
        currency_code=currency_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListUserWalletTransactions)
def public_list_user_wallet_transactions(
    currency_code: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List wallet transactions by currency code (publicListUserWalletTransactions)

    List wallet transactions by currency code ordered by create time desc.
    Other detail info:

      * Returns : currency transaction info

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/transactions

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - WalletTransactionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListUserWalletTransactions.create(
        currency_code=currency_code,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListUserWalletTransactions)
async def public_list_user_wallet_transactions_async(
    currency_code: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List wallet transactions by currency code (publicListUserWalletTransactions)

    List wallet transactions by currency code ordered by create time desc.
    Other detail info:

      * Returns : currency transaction info

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/transactions

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        currency_code: (currencyCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - WalletTransactionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListUserWalletTransactions.create(
        currency_code=currency_code,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryUserCurrencyWallets)
def query_user_currency_wallets(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user currency wallet summary (queryUserCurrencyWallets)

    Get user currency wallet summary.
    Other detail info:

    (READ)
      *  Returns : currency wallet summary

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/summary

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[CurrencyWallet] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserCurrencyWallets.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryUserCurrencyWallets)
async def query_user_currency_wallets_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user currency wallet summary (queryUserCurrencyWallets)

    Get user currency wallet summary.
    Other detail info:

    (READ)
      *  Returns : currency wallet summary

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/summary

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[CurrencyWallet] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserCurrencyWallets.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(QueryWallets)
def query_wallets(
    currency_code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    origin: Optional[Union[str, QueryWalletsOriginEnum]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query wallets (queryWallets)

    Query wallets.
    Other detail info:

      * Returns : paginated wallets info

    Properties:
        url: /platform/admin/namespaces/{namespace}/wallets

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        currency_code: (currencyCode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        origin: (origin) OPTIONAL Union[str, OriginEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - WalletPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryWallets.create(
        currency_code=currency_code,
        limit=limit,
        offset=offset,
        origin=origin,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(QueryWallets)
async def query_wallets_async(
    currency_code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    origin: Optional[Union[str, QueryWalletsOriginEnum]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query wallets (queryWallets)

    Query wallets.
    Other detail info:

      * Returns : paginated wallets info

    Properties:
        url: /platform/admin/namespaces/{namespace}/wallets

        method: GET

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        currency_code: (currencyCode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        origin: (origin) OPTIONAL Union[str, OriginEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - WalletPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryWallets.create(
        currency_code=currency_code,
        limit=limit,
        offset=offset,
        origin=origin,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ResetPlatformWalletConfig)
def reset_platform_wallet_config(
    platform: Union[str, ResetPlatformWalletConfigPlatformEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset platform wallet config (resetPlatformWalletConfig)

    Reset platform wallet config to default config.
    Other detail info:

      * Returns : platform wallet config

    Properties:
        url: /platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config/reset

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED Union[str, PlatformEnum] in path

    Responses:
        200: OK - PlatformWalletConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ResetPlatformWalletConfig.create(
        platform=platform,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ResetPlatformWalletConfig)
async def reset_platform_wallet_config_async(
    platform: Union[str, ResetPlatformWalletConfigPlatformEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset platform wallet config (resetPlatformWalletConfig)

    Reset platform wallet config to default config.
    Other detail info:

      * Returns : platform wallet config

    Properties:
        url: /platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config/reset

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED Union[str, PlatformEnum] in path

    Responses:
        200: OK - PlatformWalletConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ResetPlatformWalletConfig.create(
        platform=platform,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePlatformWalletConfig)
def update_platform_wallet_config(
    body: PlatformWalletConfigUpdate,
    platform: Union[str, UpdatePlatformWalletConfigPlatformEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update platform wallet config (updatePlatformWalletConfig)

    Update platform wallet config.
    Other detail info:

      * Returns : platform wallet config

    Properties:
        url: /platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PlatformWalletConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED Union[str, PlatformEnum] in path

    Responses:
        200: OK - PlatformWalletConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePlatformWalletConfig.create(
        body=body,
        platform=platform,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePlatformWalletConfig)
async def update_platform_wallet_config_async(
    body: PlatformWalletConfigUpdate,
    platform: Union[str, UpdatePlatformWalletConfigPlatformEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update platform wallet config (updatePlatformWalletConfig)

    Update platform wallet config.
    Other detail info:

      * Returns : platform wallet config

    Properties:
        url: /platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PlatformWalletConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

        platform: (platform) REQUIRED Union[str, PlatformEnum] in path

    Responses:
        200: OK - PlatformWalletConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePlatformWalletConfig.create(
        body=body,
        platform=platform,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateWalletConfig)
def update_wallet_config(
    body: WalletConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update wallet config (updateWalletConfig)

    Update wallet config of a namespace

    Properties:
        url: /platform/admin/namespaces/{namespace}/wallet/config

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED WalletConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - WalletConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateWalletConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateWalletConfig)
async def update_wallet_config_async(
    body: WalletConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update wallet config (updateWalletConfig)

    Update wallet config of a namespace

    Properties:
        url: /platform/admin/namespaces/{namespace}/wallet/config

        method: PUT

        tags: ["Wallet"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED WalletConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - WalletConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateWalletConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
