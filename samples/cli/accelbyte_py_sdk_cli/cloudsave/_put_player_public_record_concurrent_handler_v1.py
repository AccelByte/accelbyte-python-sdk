# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# Accelbyte Cloud Cloudsave Service (3.1.1)

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
    put_player_public_record_concurrent_handler_v1 as put_player_public_record_concurrent_handler_v1_internal,
)
from accelbyte_py_sdk.api.cloudsave.models import ModelsConcurrentRecordRequest
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError


@click.command()
@click.argument("body", type=str)
@click.argument("key", type=str)
@click.argument("user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def put_player_public_record_concurrent_handler_v1(
    body: str,
    key: str,
    user_id: str,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(put_player_public_record_concurrent_handler_v1_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if body is not None:
        try:
            body_json = json.loads(body)
            body = ModelsConcurrentRecordRequest.create_from_dict(body_json)
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    result, error = put_player_public_record_concurrent_handler_v1_internal(
        body=body,
        key=key,
        user_id=user_id,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(
            f"putPlayerPublicRecordConcurrentHandlerV1 failed: {str(error)}"
        )
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


put_player_public_record_concurrent_handler_v1.operation_id = (
    "putPlayerPublicRecordConcurrentHandlerV1"
)
put_player_public_record_concurrent_handler_v1.is_deprecated = False
