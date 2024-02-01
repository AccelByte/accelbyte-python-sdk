# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Ds Artifact Manager

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
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

import json
import yaml
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from .._utils import to_dict
from accelbyte_py_sdk.api.dsartifact import list_all_queue as list_all_queue_internal
from accelbyte_py_sdk.api.dsartifact.models import ModelsListAllQueueResponse
from accelbyte_py_sdk.api.dsartifact.models import ResponseError


@click.command()
@click.option("--exclude_uploading", "exclude_uploading", type=bool)
@click.option("--limit", "limit", type=int)
@click.option("--next", "next_", type=str)
@click.option("--node_ip", "node_ip", type=str)
@click.option("--order", "order", type=str)
@click.option("--pod_name", "pod_name", type=str)
@click.option("--previous", "previous", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def list_all_queue(
    exclude_uploading: Optional[bool] = None,
    limit: Optional[int] = None,
    next_: Optional[str] = None,
    node_ip: Optional[str] = None,
    order: Optional[str] = None,
    pod_name: Optional[str] = None,
    previous: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(list_all_queue_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = list_all_queue_internal(
        exclude_uploading=exclude_uploading,
        limit=limit,
        next_=next_,
        node_ip=node_ip,
        order=order,
        pod_name=pod_name,
        previous=previous,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"listAllQueue failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


list_all_queue.operation_id = "listAllQueue"
list_all_queue.is_deprecated = False
