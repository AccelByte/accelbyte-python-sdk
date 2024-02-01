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
    report_failed_upload as report_failed_upload_internal,
)
from accelbyte_py_sdk.api.dsartifact.models import ResponseError


@click.command()
@click.argument("node_ip", type=str)
@click.argument("pod_name", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def report_failed_upload(
    node_ip: str,
    pod_name: str,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(report_failed_upload_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = report_failed_upload_internal(
        node_ip=node_ip,
        pod_name=pod_name,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"reportFailedUpload failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


report_failed_upload.operation_id = "reportFailedUpload"
report_failed_upload.is_deprecated = False
