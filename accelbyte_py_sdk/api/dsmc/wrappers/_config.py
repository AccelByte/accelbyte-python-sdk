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
from ....core import deprecated
from ....core import same_doc_as

from ..models import ModelsCreateDSMConfigRequest
from ..models import ModelsCreatePortRequest
from ..models import ModelsDSMConfigExport
from ..models import ModelsDSMConfigRecord
from ..models import ModelsImportResponse
from ..models import ModelsListConfigResponse
from ..models import ModelsUpdateDSMConfigRequest
from ..models import ModelsUpdatePortRequest
from ..models import ResponseError

from ..operations.config import AddPort
from ..operations.config import ClearCache
from ..operations.config import CreateConfig
from ..operations.config import DeleteConfig
from ..operations.config import DeletePort
from ..operations.config import ExportConfigV1
from ..operations.config import GetConfig
from ..operations.config import ImportConfigV1
from ..operations.config import ListConfig
from ..operations.config import SaveConfig
from ..operations.config import UpdateConfig
from ..operations.config import UpdatePort


@same_doc_as(AddPort)
def add_port(body: ModelsCreatePortRequest, name: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AddPort.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(ClearCache)
def clear_cache(namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ClearCache.create(
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(CreateConfig)
def create_config(body: ModelsCreateDSMConfigRequest, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(DeleteConfig)
def delete_config(namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteConfig.create(
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(DeletePort)
def delete_port(name: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeletePort.create(
        name=name,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(ExportConfigV1)
def export_config_v1(namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExportConfigV1.create(
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetConfig)
def get_config(namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetConfig.create(
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(ImportConfigV1)
def import_config_v1(file: Optional[Any] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ImportConfigV1.create(
        file=file,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(ListConfig)
def list_config():
    request = ListConfig.create()
    return run_request(request)


@deprecated
@same_doc_as(SaveConfig)
def save_config(body: ModelsDSMConfigRecord):
    request = SaveConfig.create(
        body=body,
    )
    return run_request(request)


@same_doc_as(UpdateConfig)
def update_config(body: ModelsUpdateDSMConfigRequest, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(UpdatePort)
def update_port(body: ModelsUpdatePortRequest, name: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdatePort.create(
        body=body,
        name=name,
        namespace=namespace,
    )
    return run_request(request)
