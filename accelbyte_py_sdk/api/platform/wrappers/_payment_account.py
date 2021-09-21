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

from ..models import PaymentAccount

from ..operations.payment_account import PublicDeletePaymentAccount
from ..operations.payment_account import PublicGetPaymentAccounts


@same_doc_as(PublicDeletePaymentAccount)
def public_delete_payment_account(user_id: str, type_: str, id_: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicDeletePaymentAccount.create(
        user_id=user_id,
        type_=type_,
        id_=id_,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicGetPaymentAccounts)
def public_get_payment_accounts(user_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetPaymentAccounts.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request)
