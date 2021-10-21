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
from ..models import StatCreate
from ..models import StatImportInfo
from ..models import StatInfo
from ..models import StatPagingSlicedResult
from ..models import StatUpdate

from ..operations.stat_configuration import CreateStat
from ..operations.stat_configuration import CreateStat1
from ..operations.stat_configuration import DeleteStat
from ..operations.stat_configuration import ExportStats
from ..operations.stat_configuration import GetStat
from ..operations.stat_configuration import GetStats
from ..operations.stat_configuration import ImportStats
from ..operations.stat_configuration import QueryStats
from ..operations.stat_configuration import UpdateStat


@same_doc_as(CreateStat)
def create_stat(body: Optional[StatCreate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateStat.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(CreateStat1)
def create_stat_1(body: Optional[StatCreate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateStat1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteStat)
def delete_stat(stat_code: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteStat.create(
        stat_code=stat_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ExportStats)
def export_stats(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ExportStats.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetStat)
def get_stat(stat_code: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetStat.create(
        stat_code=stat_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetStats)
def get_stats(offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetStats.create(
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ImportStats)
def import_stats(file: Optional[Any] = None, replace_existing: Optional[bool] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ImportStats.create(
        file=file,
        replace_existing=replace_existing,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(QueryStats)
def query_stats(keyword: str, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryStats.create(
        keyword=keyword,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateStat)
def update_stat(stat_code: str, body: Optional[StatUpdate] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateStat.create(
        stat_code=stat_code,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)
