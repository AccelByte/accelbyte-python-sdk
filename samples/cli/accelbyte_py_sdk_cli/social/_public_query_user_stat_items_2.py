# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# Accelbyte Cloud Social Service (1.31.1)

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
from accelbyte_py_sdk.api.social import (
    public_query_user_stat_items_2 as public_query_user_stat_items_2_internal,
)
from accelbyte_py_sdk.api.social.models import ADTOObjectForUserStatItemValue
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.option("--additional_key", "additional_key", type=str)
@click.option("--stat_codes", "stat_codes", type=str)
@click.option("--tags", "tags", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def public_query_user_stat_items_2(
    user_id: str,
    additional_key: Optional[str] = None,
    stat_codes: Optional[str] = None,
    tags: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_query_user_stat_items_2_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if stat_codes is not None:
        try:
            stat_codes_json = json.loads(stat_codes)
            stat_codes = [str(i0) for i0 in stat_codes_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'statCodes'. {str(e)}") from e
    if tags is not None:
        try:
            tags_json = json.loads(tags)
            tags = [str(i0) for i0 in tags_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'tags'. {str(e)}") from e
    result, error = public_query_user_stat_items_2_internal(
        user_id=user_id,
        additional_key=additional_key,
        stat_codes=stat_codes,
        tags=tags,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"publicQueryUserStatItems_2 failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


public_query_user_stat_items_2.operation_id = "publicQueryUserStatItems_2"
public_query_user_stat_items_2.is_deprecated = False
