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

from ..models import ModelsCreateImageRequest
from ..models import ModelsDSMConfig
from ..models import ModelsGetImageDetailResponse
from ..models import ModelsGetImageLimitResponse
from ..models import ModelsImageRecord
from ..models import ModelsImageRecordUpdate
from ..models import ModelsImportResponse
from ..models import ModelsListConfigResponse
from ..models import ModelsListImageResponse
from ..models import ModelsUpdateDeploymentRequest
from ..models import ModelsUpdateDSMConfigRequest
from ..models import ResponseError

from ..operations.config import CreateImage
from ..operations.config import DeleteImage
from ..operations.config import ExportConfigV1
from ..operations.config import ExportImages
from ..operations.config import GetConfig
from ..operations.config import GetImageDetail
from ..operations.config import GetImageLimit
from ..operations.config import ImportConfigV1
from ..operations.config import ImportImages
from ..operations.config import ListConfig
from ..operations.config import ListImages
from ..operations.config import SaveConfig
from ..operations.config import UpdateConfig
from ..operations.config import UpdateDeployment
from ..operations.config import UpdateImage


@same_doc_as(CreateImage)
def create_image(body: ModelsCreateImageRequest):
    request = CreateImage.create(
        body=body,
    )
    return run_request(request)


@same_doc_as(DeleteImage)
def delete_image(image_uri: str, version: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteImage.create(
        image_uri=image_uri,
        version=version,
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


@same_doc_as(ExportImages)
def export_images(namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExportImages.create(
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


@same_doc_as(GetImageDetail)
def get_image_detail(version: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetImageDetail.create(
        version=version,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetImageLimit)
def get_image_limit(namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetImageLimit.create(
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


@same_doc_as(ImportImages)
def import_images(file: Any):
    request = ImportImages.create(
        file=file,
    )
    return run_request(request)


@same_doc_as(ListConfig)
def list_config():
    request = ListConfig.create()
    return run_request(request)


@same_doc_as(ListImages)
def list_images(q: Optional[str] = None, offset: Optional[int] = None, count: Optional[int] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListImages.create(
        q=q,
        offset=offset,
        count=count,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(SaveConfig)
def save_config(body: ModelsDSMConfig):
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


@same_doc_as(UpdateDeployment)
def update_deployment(body: ModelsUpdateDeploymentRequest, deployment: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateDeployment.create(
        body=body,
        deployment=deployment,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(UpdateImage)
def update_image(body: ModelsImageRecordUpdate):
    request = UpdateImage.create(
        body=body,
    )
    return run_request(request)
