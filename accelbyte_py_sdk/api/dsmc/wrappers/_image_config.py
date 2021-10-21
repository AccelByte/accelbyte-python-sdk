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
from ..models import ModelsGetImageDetailResponse
from ..models import ModelsGetImageLimitResponse
from ..models import ModelsImageRecord
from ..models import ModelsImageRecordUpdate
from ..models import ModelsImportResponse
from ..models import ModelsListImageResponse
from ..models import ResponseError

from ..operations.image_config import CreateImage
from ..operations.image_config import DeleteImage
from ..operations.image_config import ExportImages
from ..operations.image_config import GetImageDetail
from ..operations.image_config import GetImageLimit
from ..operations.image_config import ImportImages
from ..operations.image_config import ListImages
from ..operations.image_config import UpdateImage


@same_doc_as(CreateImage)
def create_image(body: ModelsCreateImageRequest, x_additional_headers: Optional[Dict[str, str]] = None):
    request = CreateImage.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteImage)
def delete_image(image_uri: str, version: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteImage.create(
        image_uri=image_uri,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ExportImages)
def export_images(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExportImages.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetImageDetail)
def get_image_detail(version: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetImageDetail.create(
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetImageLimit)
def get_image_limit(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetImageLimit.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ImportImages)
def import_images(file: Any, x_additional_headers: Optional[Dict[str, str]] = None):
    request = ImportImages.create(
        file=file,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ListImages)
def list_images(q: Optional[str] = None, offset: Optional[int] = None, count: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
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
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateImage)
def update_image(body: ModelsImageRecordUpdate, x_additional_headers: Optional[Dict[str, str]] = None):
    request = UpdateImage.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers)
