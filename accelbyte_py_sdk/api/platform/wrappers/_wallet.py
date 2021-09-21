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

from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import same_doc_as

from ..models import CreditRequest
from ..models import DebitRequest
from ..models import ErrorEntity
from ..models import PaymentRequest
from ..models import ValidationErrorEntity
from ..models import WalletInfo
from ..models import WalletPagingSlicedResult
from ..models import WalletTransactionPagingSlicedResult

from ..operations.wallet import CheckTransactionCreditLimit
from ..operations.wallet import CreditUserWallet
from ..operations.wallet import DebitUserWallet
from ..operations.wallet import DisableUserWallet
from ..operations.wallet import EnableUserWallet
from ..operations.wallet import GetUserWallet
from ..operations.wallet import GetWallet
from ..operations.wallet import ListUserWalletTransactions
from ..operations.wallet import PayWithUserWallet
from ..operations.wallet import PublicGetMyWallet
from ..operations.wallet import PublicGetWallet
from ..operations.wallet import PublicListUserWalletTransactions
from ..operations.wallet import QueryWallets


@same_doc_as(CheckTransactionCreditLimit)
def check_transaction_credit_limit(user_id: str, currency_code: str, body: Optional[CreditRequest] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CheckTransactionCreditLimit.create(
        user_id=user_id,
        currency_code=currency_code,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(CreditUserWallet)
def credit_user_wallet(user_id: str, currency_code: str, body: Optional[CreditRequest] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreditUserWallet.create(
        user_id=user_id,
        currency_code=currency_code,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(DebitUserWallet)
def debit_user_wallet(user_id: str, wallet_id: str, body: Optional[DebitRequest] = None, namespace: Optional[str] = None):
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
    return run_request(request)


@same_doc_as(DisableUserWallet)
def disable_user_wallet(user_id: str, wallet_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DisableUserWallet.create(
        user_id=user_id,
        wallet_id=wallet_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(EnableUserWallet)
def enable_user_wallet(user_id: str, wallet_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = EnableUserWallet.create(
        user_id=user_id,
        wallet_id=wallet_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetUserWallet)
def get_user_wallet(user_id: str, wallet_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserWallet.create(
        user_id=user_id,
        wallet_id=wallet_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetWallet)
def get_wallet(wallet_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetWallet.create(
        wallet_id=wallet_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(ListUserWalletTransactions)
def list_user_wallet_transactions(user_id: str, wallet_id: str, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListUserWalletTransactions.create(
        user_id=user_id,
        wallet_id=wallet_id,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PayWithUserWallet)
def pay_with_user_wallet(user_id: str, currency_code: str, body: Optional[PaymentRequest] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PayWithUserWallet.create(
        user_id=user_id,
        currency_code=currency_code,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicGetMyWallet)
def public_get_my_wallet(currency_code: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetMyWallet.create(
        currency_code=currency_code,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicGetWallet)
def public_get_wallet(user_id: str, currency_code: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetWallet.create(
        user_id=user_id,
        currency_code=currency_code,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicListUserWalletTransactions)
def public_list_user_wallet_transactions(user_id: str, currency_code: str, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicListUserWalletTransactions.create(
        user_id=user_id,
        currency_code=currency_code,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(QueryWallets)
def query_wallets(user_id: Optional[str] = None, currency_code: Optional[str] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryWallets.create(
        user_id=user_id,
        currency_code=currency_code,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request)
