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

from ..models import LogAppMessageDeclaration
from ..models import ModelsPartyData
from ..models import ModelsPartyPUTCustomAttributesRequest
from ..models import RestapiErrorResponseBody

from ..operations.operations import AdminUpdatePartyAttributesV1
from ..operations.operations import PublicGetMessages


@same_doc_as(AdminUpdatePartyAttributesV1)
def admin_update_party_attributes_v1(body: ModelsPartyPUTCustomAttributesRequest, party_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdatePartyAttributesV1.create(
        body=body,
        party_id=party_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicGetMessages)
def public_get_messages(x_additional_headers: Optional[Dict[str, str]] = None):
    request = PublicGetMessages.create()
    return run_request(request, additional_headers=x_additional_headers)
