# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# Fleet Commander

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
from accelbyte_py_sdk.api.ams import (
    artifact_bulk_delete as artifact_bulk_delete_internal,
)
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse


@click.command()
@click.option("--artifact_type", "artifact_type", type=str)
@click.option("--fleet_id", "fleet_id", type=str)
@click.option("--uploaded_before", "uploaded_before", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def artifact_bulk_delete(
    artifact_type: Optional[str] = None,
    fleet_id: Optional[str] = None,
    uploaded_before: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(artifact_bulk_delete_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = artifact_bulk_delete_internal(
        artifact_type=artifact_type,
        fleet_id=fleet_id,
        uploaded_before=uploaded_before,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"ArtifactBulkDelete failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


artifact_bulk_delete.operation_id = "ArtifactBulkDelete"
artifact_bulk_delete.is_deprecated = False
