# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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

from ..models import CreditRequest
from ..models import CurrencyWallet
from ..models import DebitByCurrencyCodeRequest
from ..models import DebitRequest
from ..models import DetailedWalletTransactionPagingSlicedResult
from ..models import ErrorEntity
from ..models import PaymentRequest
from ..models import PlatformWallet
from ..models import PlatformWalletConfigInfo
from ..models import PlatformWalletConfigUpdate
from ..models import ValidationErrorEntity
from ..models import WalletInfo
from ..models import WalletPagingSlicedResult
from ..models import WalletTransactionPagingSlicedResult

from ..operations.wallet import CheckWallet
from ..operations.wallet import CheckWalletOriginEnum
from ..operations.wallet import CreditUserWallet
from ..operations.wallet import DebitUserWallet
from ..operations.wallet import DebitUserWalletByCurrencyCode
from ..operations.wallet import DisableUserWallet
from ..operations.wallet import EnableUserWallet
from ..operations.wallet import GetPlatformWalletConfig
from ..operations.wallet import GetPlatformWalletConfigPlatformEnum
from ..operations.wallet import GetUserWallet
from ..operations.wallet import GetWallet
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
from ..models import CreditRequestOriginEnum, CreditRequestSourceEnum
from ..models import DebitByCurrencyCodeRequestBalanceOriginEnum
from ..models import PaymentRequestWalletPlatformEnum
from ..models import PlatformWalletStatusEnum, PlatformWalletWalletStatusEnum
from ..models import PlatformWalletConfigUpdateAllowedBalanceOriginsEnum
from ..models import WalletInfoStatusEnum


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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    currency_code: str,
    user_id: str,
    body: Optional[CreditRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreditUserWallet.create(
        currency_code=currency_code,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreditUserWallet)
async def credit_user_wallet_async(
    currency_code: str,
    user_id: str,
    body: Optional[CreditRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreditUserWallet.create(
        currency_code=currency_code,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DebitUserWallet)
def debit_user_wallet(
    user_id: str,
    wallet_id: str,
    body: Optional[DebitRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DebitUserWallet.create(
        user_id=user_id,
        wallet_id=wallet_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DebitUserWallet)
async def debit_user_wallet_async(
    user_id: str,
    wallet_id: str,
    body: Optional[DebitRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DebitUserWallet.create(
        user_id=user_id,
        wallet_id=wallet_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DebitUserWalletByCurrencyCode)
def debit_user_wallet_by_currency_code(
    currency_code: str,
    user_id: str,
    body: Optional[DebitByCurrencyCodeRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DebitUserWalletByCurrencyCode.create(
        currency_code=currency_code,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DebitUserWalletByCurrencyCode)
async def debit_user_wallet_by_currency_code_async(
    currency_code: str,
    user_id: str,
    body: Optional[DebitByCurrencyCodeRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DebitUserWalletByCurrencyCode.create(
        currency_code=currency_code,
        user_id=user_id,
        body=body,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetWallet.create(
        wallet_id=wallet_id,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    currency_code: str,
    user_id: str,
    body: Optional[PaymentRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PayWithUserWallet.create(
        currency_code=currency_code,
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PayWithUserWallet)
async def pay_with_user_wallet_async(
    currency_code: str,
    user_id: str,
    body: Optional[PaymentRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PayWithUserWallet.create(
        currency_code=currency_code,
        user_id=user_id,
        body=body,
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    platform: Union[str, UpdatePlatformWalletConfigPlatformEnum],
    body: Optional[PlatformWalletConfigUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdatePlatformWalletConfig.create(
        platform=platform,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePlatformWalletConfig)
async def update_platform_wallet_config_async(
    platform: Union[str, UpdatePlatformWalletConfigPlatformEnum],
    body: Optional[PlatformWalletConfigUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdatePlatformWalletConfig.create(
        platform=platform,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
