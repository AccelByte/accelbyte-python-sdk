# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# Fleet Commander (1.8.1)

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
from accelbyte_py_sdk.api.ams import artifact_get as artifact_get_internal
from accelbyte_py_sdk.api.ams.models import ApiArtifactResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse


@click.command()
@click.option("--artifact_type", "artifact_type", type=str)
@click.option("--count", "count", type=int)
@click.option("--end_date", "end_date", type=str)
@click.option("--fleet_id", "fleet_id", type=str)
@click.option("--image_id", "image_id", type=str)
@click.option("--max_size", "max_size", type=int)
@click.option("--min_size", "min_size", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--region", "region", type=str)
@click.option("--server_id", "server_id", type=str)
@click.option("--start_date", "start_date", type=str)
@click.option("--status", "status", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def artifact_get(
    artifact_type: Optional[str] = None,
    count: Optional[int] = None,
    end_date: Optional[str] = None,
    fleet_id: Optional[str] = None,
    image_id: Optional[str] = None,
    max_size: Optional[int] = None,
    min_size: Optional[int] = None,
    offset: Optional[int] = None,
    region: Optional[str] = None,
    server_id: Optional[str] = None,
    start_date: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(artifact_get_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = artifact_get_internal(
        artifact_type=artifact_type,
        count=count,
        end_date=end_date,
        fleet_id=fleet_id,
        image_id=image_id,
        max_size=max_size,
        min_size=min_size,
        offset=offset,
        region=region,
        server_id=server_id,
        start_date=start_date,
        status=status,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"ArtifactGet failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


artifact_get.operation_id = "ArtifactGet"
artifact_get.is_deprecated = False
