# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Cloudsave Service (3.8.1)

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
from accelbyte_py_sdk.api.cloudsave import (
    get_other_player_public_record_key_handler_v1 as get_other_player_public_record_key_handler_v1_internal,
)
from accelbyte_py_sdk.api.cloudsave.models import ModelsListPlayerRecordKeysResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError


@click.command()
@click.argument("user_id", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def get_other_player_public_record_key_handler_v1(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(get_other_player_public_record_key_handler_v1_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = get_other_player_public_record_key_handler_v1_internal(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"getOtherPlayerPublicRecordKeyHandlerV1 failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


get_other_player_public_record_key_handler_v1.operation_id = (
    "getOtherPlayerPublicRecordKeyHandlerV1"
)
get_other_player_public_record_key_handler_v1.is_deprecated = False
