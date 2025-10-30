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
from accelbyte_py_sdk.api.ams import image_list as image_list_internal
from accelbyte_py_sdk.api.ams.models import ApiImageList
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse


@click.command()
@click.option("--count", "count", type=int)
@click.option("--in_use", "in_use", type=str)
@click.option("--is_protected", "is_protected", type=bool)
@click.option("--name", "name", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--sort_by", "sort_by", type=str)
@click.option("--sort_direction", "sort_direction", type=str)
@click.option("--status", "status", type=str)
@click.option("--tag", "tag", type=str)
@click.option("--target_architecture", "target_architecture", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def image_list(
    count: Optional[int] = None,
    in_use: Optional[str] = None,
    is_protected: Optional[bool] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    sort_direction: Optional[str] = None,
    status: Optional[str] = None,
    tag: Optional[str] = None,
    target_architecture: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(image_list_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = image_list_internal(
        count=count,
        in_use=in_use,
        is_protected=is_protected,
        name=name,
        offset=offset,
        sort_by=sort_by,
        sort_direction=sort_direction,
        status=status,
        tag=tag,
        target_architecture=target_architecture,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"ImageList failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


image_list.operation_id = "ImageList"
image_list.is_deprecated = False
