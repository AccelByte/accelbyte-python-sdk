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

from ..models import ModelsCountServerResponse
from ..models import ModelsCountSessionResponse
from ..models import ModelsDetailedCountServerResponse
from ..models import ModelsListServerResponse
from ..models import ModelsListSessionResponse
from ..models import ModelsServer
from ..models import ModelsServerLogs
from ..models import ResponseError

from ..operations.admin import CountServer
from ..operations.admin import CountServerDetailed
from ..operations.admin import CountSession
from ..operations.admin import DeleteLocalServer
from ..operations.admin import DeleteServer
from ..operations.admin import DeleteSession
from ..operations.admin import GetServer
from ..operations.admin import GetServerLogs
from ..operations.admin import ListLocalServer
from ..operations.admin import ListServer
from ..operations.admin import ListSession


@same_doc_as(CountServer)
def count_server(namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CountServer.create(
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(CountServerDetailed)
def count_server_detailed(region: Optional[str] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CountServerDetailed.create(
        region=region,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(CountSession)
def count_session(region: Optional[str] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CountSession.create(
        region=region,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(DeleteLocalServer)
def delete_local_server(name: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteLocalServer.create(
        name=name,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(DeleteServer)
def delete_server(pod_name: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteServer.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(DeleteSession)
def delete_session(session_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetServer)
def get_server(pod_name: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetServer.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetServerLogs)
def get_server_logs(pod_name: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetServerLogs.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(ListLocalServer)
def list_local_server(namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListLocalServer.create(
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(ListServer)
def list_server(region: Optional[str] = None, offset: Optional[int] = None, count: Optional[int] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListServer.create(
        region=region,
        offset=offset,
        count=count,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(ListSession)
def list_session(region: Optional[str] = None, offset: Optional[int] = None, count: Optional[int] = None, with_server: Optional[bool] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListSession.create(
        region=region,
        offset=offset,
        count=count,
        with_server=with_server,
        namespace=namespace,
    )
    return run_request(request)
