# template file: justice_py_sdk_codegen/__main__.py

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
from ....core import run_request_async
from ....core import same_doc_as

from ..models import ModelPublicThirdPartyPlatformInfo
from ..models import ModelThirdPartyLoginPlatformCredentialRequest
from ..models import ModelThirdPartyLoginPlatformCredentialResponse
from ..models import RestErrorResponse

from ..operations.third_party_credential import AddThirdPartyLoginPlatformCredentialV3
from ..operations.third_party_credential import DeleteThirdPartyLoginPlatformCredentialV3
from ..operations.third_party_credential import RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
from ..operations.third_party_credential import RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
from ..operations.third_party_credential import RetrieveAllThirdPartyLoginPlatformCredentialV3
from ..operations.third_party_credential import RetrieveThirdPartyLoginPlatformCredentialV3
from ..operations.third_party_credential import UpdateThirdPartyLoginPlatformCredentialV3


@same_doc_as(AddThirdPartyLoginPlatformCredentialV3)
def add_third_party_login_platform_credential_v3(body: ModelThirdPartyLoginPlatformCredentialRequest, platform_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AddThirdPartyLoginPlatformCredentialV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AddThirdPartyLoginPlatformCredentialV3)
async def add_third_party_login_platform_credential_v3_async(body: ModelThirdPartyLoginPlatformCredentialRequest, platform_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AddThirdPartyLoginPlatformCredentialV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteThirdPartyLoginPlatformCredentialV3)
def delete_third_party_login_platform_credential_v3(platform_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteThirdPartyLoginPlatformCredentialV3.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteThirdPartyLoginPlatformCredentialV3)
async def delete_third_party_login_platform_credential_v3_async(platform_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteThirdPartyLoginPlatformCredentialV3.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3)
def retrieve_all_active_third_party_login_platform_credential_public_v3(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3)
async def retrieve_all_active_third_party_login_platform_credential_public_v3_async(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3.create(
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(RetrieveAllActiveThirdPartyLoginPlatformCredentialV3)
def retrieve_all_active_third_party_login_platform_credential_v3(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveAllActiveThirdPartyLoginPlatformCredentialV3.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(RetrieveAllActiveThirdPartyLoginPlatformCredentialV3)
async def retrieve_all_active_third_party_login_platform_credential_v3_async(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveAllActiveThirdPartyLoginPlatformCredentialV3.create(
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(RetrieveAllThirdPartyLoginPlatformCredentialV3)
def retrieve_all_third_party_login_platform_credential_v3(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveAllThirdPartyLoginPlatformCredentialV3.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(RetrieveAllThirdPartyLoginPlatformCredentialV3)
async def retrieve_all_third_party_login_platform_credential_v3_async(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveAllThirdPartyLoginPlatformCredentialV3.create(
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(RetrieveThirdPartyLoginPlatformCredentialV3)
def retrieve_third_party_login_platform_credential_v3(platform_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveThirdPartyLoginPlatformCredentialV3.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(RetrieveThirdPartyLoginPlatformCredentialV3)
async def retrieve_third_party_login_platform_credential_v3_async(platform_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveThirdPartyLoginPlatformCredentialV3.create(
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateThirdPartyLoginPlatformCredentialV3)
def update_third_party_login_platform_credential_v3(body: ModelThirdPartyLoginPlatformCredentialRequest, platform_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateThirdPartyLoginPlatformCredentialV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateThirdPartyLoginPlatformCredentialV3)
async def update_third_party_login_platform_credential_v3_async(body: ModelThirdPartyLoginPlatformCredentialRequest, platform_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateThirdPartyLoginPlatformCredentialV3.create(
        body=body,
        platform_id=platform_id,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)
