# justice-dsm-controller-service (2.11.0)

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template_file: python-cli-command.j2

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
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from accelbyte_py_sdk.api.dsmc import list_images as list_images_internal
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
@click.option("--doc", type=bool)
def list_images(
        count: Optional[int] = None,
        offset: Optional[int] = None,
        q: Optional[str] = None,
        sort_by: Optional[str] = None,
        sort_direction: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(list_images_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = list_images_internal(
        count=count,
        offset=offset,
        q=q,
        sort_by=sort_by,
        sort_direction=sort_direction,
        namespace=namespace,
    )
    if error:
        raise Exception(f"ListImages failed: {str(error)}")
    click.echo("ListImages success")
