# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Dsm Controller Service (6.4.4)

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
from accelbyte_py_sdk.api.dsmc import list_images_client as list_images_client_internal
from accelbyte_py_sdk.api.dsmc.models import ModelsListImageResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError


@click.command()
@click.option("--count", "count", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--q", "q", type=str)
@click.option("--sort_by", "sort_by", type=str)
@click.option("--sort_direction", "sort_direction", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def list_images_client(
    count: Optional[int] = None,
    offset: Optional[int] = None,
    q: Optional[str] = None,
    sort_by: Optional[str] = None,
    sort_direction: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(list_images_client_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = list_images_client_internal(
        count=count,
        offset=offset,
        q=q,
        sort_by=sort_by,
        sort_direction=sort_direction,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"ListImagesClient failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


list_images_client.operation_id = "ListImagesClient"
list_images_client.is_deprecated = False
