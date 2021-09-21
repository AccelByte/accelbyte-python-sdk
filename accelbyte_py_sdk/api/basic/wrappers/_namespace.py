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

from ..models import ErrorEntity
from ..models import NamespaceCreate
from ..models import NamespaceInfo
from ..models import NamespacePublisherInfo
from ..models import NamespaceStatusUpdate
from ..models import NamespaceUpdate
from ..models import ValidationErrorEntity

from ..operations.namespace import ChangeNamespaceStatus
from ..operations.namespace import CreateNamespace
from ..operations.namespace import DeleteNamespace
from ..operations.namespace import GetNamespace
from ..operations.namespace import GetNamespacePublisher
from ..operations.namespace import GetNamespaces
from ..operations.namespace import PublicGetNamespacePublisher
from ..operations.namespace import PublicGetNamespaces
from ..operations.namespace import UpdateNamespace


@same_doc_as(ChangeNamespaceStatus)
def change_namespace_status(body: Optional[NamespaceStatusUpdate] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ChangeNamespaceStatus.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(CreateNamespace)
def create_namespace(body: Optional[NamespaceCreate] = None):
    request = CreateNamespace.create(
        body=body,
    )
    return run_request(request)


@same_doc_as(DeleteNamespace)
def delete_namespace(namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteNamespace.create(
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetNamespace)
def get_namespace(active_only: Optional[bool] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetNamespace.create(
        active_only=active_only,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetNamespacePublisher)
def get_namespace_publisher(namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetNamespacePublisher.create(
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetNamespaces)
def get_namespaces(active_only: Optional[bool] = None):
    request = GetNamespaces.create(
        active_only=active_only,
    )
    return run_request(request)


@same_doc_as(PublicGetNamespacePublisher)
def public_get_namespace_publisher(namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGetNamespacePublisher.create(
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicGetNamespaces)
def public_get_namespaces(active_only: Optional[bool] = None):
    request = PublicGetNamespaces.create(
        active_only=active_only,
    )
    return run_request(request)


@same_doc_as(UpdateNamespace)
def update_namespace(body: Optional[NamespaceUpdate] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateNamespace.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request)
