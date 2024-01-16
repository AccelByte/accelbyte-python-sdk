# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Chat Service (0.4.16)

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
from accelbyte_py_sdk.api.chat import admin_query_topic as admin_query_topic_internal
from accelbyte_py_sdk.api.chat.models import ModelsTopicInfo
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody


@click.command()
@click.option("--include_members", "include_members", type=bool)
@click.option("--include_past_members", "include_past_members", type=bool)
@click.option("--include_past_topics", "include_past_topics", type=bool)
@click.option("--limit", "limit", type=int)
@click.option("--offset", "offset", type=int)
@click.option("--topic", "topic", type=str)
@click.option("--topic_sub_type", "topic_sub_type", type=str)
@click.option("--topic_type", "topic_type", type=str)
@click.option("--user_id", "user_id", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def admin_query_topic(
    include_members: Optional[bool] = None,
    include_past_members: Optional[bool] = None,
    include_past_topics: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    topic: Optional[str] = None,
    topic_sub_type: Optional[str] = None,
    topic_type: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(admin_query_topic_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if topic is not None:
        try:
            topic_json = json.loads(topic)
            topic = [str(i0) for i0 in topic_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'topic'. {str(e)}") from e
    result, error = admin_query_topic_internal(
        include_members=include_members,
        include_past_members=include_past_members,
        include_past_topics=include_past_topics,
        limit=limit,
        offset=offset,
        topic=topic,
        topic_sub_type=topic_sub_type,
        topic_type=topic_type,
        user_id=user_id,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"adminQueryTopic failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


admin_query_topic.operation_id = "adminQueryTopic"
admin_query_topic.is_deprecated = False
