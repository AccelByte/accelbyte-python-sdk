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

from ..models import ModelsDefaultProvider

from ..operations.public import GetDefaultProvider
from ..operations.public import ListProviders


@same_doc_as(GetDefaultProvider)
def get_default_provider():
    request = GetDefaultProvider.create()
    return run_request(request)


@same_doc_as(ListProviders)
def list_providers():
    request = ListProviders.create()
    return run_request(request)
