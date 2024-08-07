# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Ds Log Manager Service

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
from accelbyte_py_sdk.api.dslogmanager import (
    list_metadata_servers as list_metadata_servers_internal,
)
from accelbyte_py_sdk.api.dslogmanager.models import ModelsListTerminatedServersResponse
from accelbyte_py_sdk.api.dslogmanager.models import ModelsMetadataServersRequest
from accelbyte_py_sdk.api.dslogmanager.models import ResponseError


@click.command()
@click.argument("body", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def list_metadata_servers(
    body: str,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(list_metadata_servers_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if body is not None:
        try:
            body_json = json.loads(body)
            body = ModelsMetadataServersRequest.create_from_dict(body_json)
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    result, error = list_metadata_servers_internal(
        body=body,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"listMetadataServers failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


list_metadata_servers.operation_id = "listMetadataServers"
list_metadata_servers.is_deprecated = False
