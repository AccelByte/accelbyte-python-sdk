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


from ..operations.anonymization import AnonymizeEntitlement
from ..operations.anonymization import AnonymizeFulfillment
from ..operations.anonymization import AnonymizeWallet


@same_doc_as(AnonymizeEntitlement)
def anonymize_entitlement(user_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AnonymizeEntitlement.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(AnonymizeFulfillment)
def anonymize_fulfillment(user_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AnonymizeFulfillment.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(AnonymizeWallet)
def anonymize_wallet(user_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AnonymizeWallet.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request)
