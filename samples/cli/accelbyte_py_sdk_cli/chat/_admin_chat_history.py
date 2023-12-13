# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Chat Service (0.4.14)

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
from accelbyte_py_sdk.api.chat import admin_chat_history as admin_chat_history_internal
from accelbyte_py_sdk.api.chat.models import ModelsChatMessageWithPaginationResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody


@click.command()
@click.option("--chat_id", "chat_id", type=str)
@click.option("--end_created_at", "end_created_at", type=int)
@click.option("--keyword", "keyword", type=str)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--order", "order", type=str)
@click.option("--sender_user_id", "sender_user_id", type=str)
@click.option("--shard_id", "shard_id", type=str)
@click.option("--start_created_at", "start_created_at", type=int)
@click.option("--topic", "topic", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def admin_chat_history(
    chat_id: Optional[str] = None,
    end_created_at: Optional[int] = None,
    keyword: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    sender_user_id: Optional[str] = None,
    shard_id: Optional[str] = None,
    start_created_at: Optional[int] = None,
    topic: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_chat_history_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if chat_id is not None:
        try:
            chat_id_json = json.loads(chat_id)
            chat_id = [str(i0) for i0 in chat_id_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'chatId'. {str(e)}") from e
    if topic is not None:
        try:
            topic_json = json.loads(topic)
            topic = [str(i0) for i0 in topic_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'topic'. {str(e)}") from e
    result, error = admin_chat_history_internal(
        chat_id=chat_id,
        end_created_at=end_created_at,
        keyword=keyword,
        limit=limit,
        offset=offset,
        order=order,
        sender_user_id=sender_user_id,
        shard_id=shard_id,
        start_created_at=start_created_at,
        topic=topic,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"adminChatHistory failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


admin_chat_history.operation_id = "adminChatHistory"
admin_chat_history.is_deprecated = False
