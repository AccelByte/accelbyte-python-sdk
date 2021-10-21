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

from ..models import ModelsCreatePodConfigRequest
from ..models import ModelsListPodConfigResponse
from ..models import ModelsPodConfigRecord
from ..models import ModelsUpdatePodConfigRequest
from ..models import ResponseError

from ..operations.pod_config import CreatePodConfig
from ..operations.pod_config import DeletePodConfig
from ..operations.pod_config import GetAllPodConfig
from ..operations.pod_config import GetPodConfig
from ..operations.pod_config import UpdatePodConfig


@same_doc_as(CreatePodConfig)
def create_pod_config(body: ModelsCreatePodConfigRequest, name: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreatePodConfig.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(DeletePodConfig)
def delete_pod_config(name: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeletePodConfig.create(
        name=name,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetAllPodConfig)
def get_all_pod_config(offset: Optional[int] = None, count: Optional[int] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetAllPodConfig.create(
        offset=offset,
        count=count,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetPodConfig)
def get_pod_config(name: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPodConfig.create(
        name=name,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(UpdatePodConfig)
def update_pod_config(body: ModelsUpdatePodConfigRequest, name: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdatePodConfig.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return run_request(request)
