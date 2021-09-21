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


from ..operations.sso_saml_2_0 import PlatformAuthenticateSAMLV3Handler


@same_doc_as(PlatformAuthenticateSAMLV3Handler)
def platform_authenticate_samlv3_handler(platform_id: str, state: str, code: Optional[str] = None, error: Optional[str] = None):
    request = PlatformAuthenticateSAMLV3Handler.create(
        platform_id=platform_id,
        state=state,
        code=code,
        error=error,
    )
    return run_request(request)
