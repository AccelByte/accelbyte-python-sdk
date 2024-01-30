# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Chat Service

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
from accelbyte_py_sdk.api.chat import (
    admin_get_inbox_messages as admin_get_inbox_messages_internal,
)
from accelbyte_py_sdk.api.chat.models import ModelsGetInboxMessagesResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody


@click.command()
@click.option("--active_only", "active_only", type=bool)
@click.option("--end_created_at", "end_created_at", type=int)
@click.option("--limit", "limit", type=int)
@click.option("--message_id", "message_id", type=str)
@click.option("--offset", "offset", type=int)
@click.option("--order", "order", type=str)
@click.option("--scope", "scope", type=str)
@click.option("--start_created_at", "start_created_at", type=int)
@click.option("--status", "status", type=str)
@click.option("--transient", "transient", type=bool)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def admin_get_inbox_messages(
    active_only: Optional[bool] = None,
    end_created_at: Optional[int] = None,
    limit: Optional[int] = None,
    message_id: Optional[str] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    scope: Optional[str] = None,
    start_created_at: Optional[int] = None,
    status: Optional[str] = None,
    transient: Optional[bool] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_get_inbox_messages_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if message_id is not None:
        try:
            message_id_json = json.loads(message_id)
            message_id = [str(i0) for i0 in message_id_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'messageId'. {str(e)}") from e
    result, error = admin_get_inbox_messages_internal(
        active_only=active_only,
        end_created_at=end_created_at,
        limit=limit,
        message_id=message_id,
        offset=offset,
        order=order,
        scope=scope,
        start_created_at=start_created_at,
        status=status,
        transient=transient,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"adminGetInboxMessages failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


admin_get_inbox_messages.operation_id = "adminGetInboxMessages"
admin_get_inbox_messages.is_deprecated = False
