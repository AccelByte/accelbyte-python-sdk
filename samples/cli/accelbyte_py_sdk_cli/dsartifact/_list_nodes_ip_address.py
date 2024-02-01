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
from accelbyte_py_sdk.api.dsartifact import (
    list_nodes_ip_address as list_nodes_ip_address_internal,
)
from accelbyte_py_sdk.api.dsartifact.models import ModelsListNodesIPAddress
from accelbyte_py_sdk.api.dsartifact.models import ResponseError


@click.command()
@click.option("--limit", "limit", type=int)
@click.option("--next", "next_", type=str)
@click.option("--node_ip", "node_ip", type=str)
@click.option("--previous", "previous", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def list_nodes_ip_address(
    limit: Optional[int] = None,
    next_: Optional[str] = None,
    node_ip: Optional[str] = None,
    previous: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(list_nodes_ip_address_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = list_nodes_ip_address_internal(
        limit=limit,
        next_=next_,
        node_ip=node_ip,
        previous=previous,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"listNodesIPAddress failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


list_nodes_ip_address.operation_id = "listNodesIPAddress"
list_nodes_ip_address.is_deprecated = False
