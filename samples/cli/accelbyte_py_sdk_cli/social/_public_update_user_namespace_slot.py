# justice-social-service (1.23.0)

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
from accelbyte_py_sdk.api.social import public_update_user_namespace_slot as public_update_user_namespace_slot_internal
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import SlotInfo


@click.command()
@click.argument("slot_id", type=str)
@click.argument("user_id", type=str)
@click.option("--checksum", "checksum", type=str)
@click.option("--custom_attribute", "custom_attribute", type=str)
@click.option("--file", "file", type=str)
@click.option("--label", "label", type=str)
@click.option("--tags", "tags", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def public_update_user_namespace_slot(
        slot_id: str,
        user_id: str,
        checksum: Optional[str] = None,
        custom_attribute: Optional[str] = None,
        file: Optional[str] = None,
        label: Optional[str] = None,
        tags: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_update_user_namespace_slot_internal.__doc__)
        return
    login_as_internal(login_as)
    if tags is not None:
        try:
            tags_json = json.loads(tags)
            tags = [str(i0) for i0 in tags_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'tags'. {str(e)}") from e
    _, error = public_update_user_namespace_slot_internal(
        slot_id=slot_id,
        user_id=user_id,
        checksum=checksum,
        custom_attribute=custom_attribute,
        file=file,
        label=label,
        tags=tags,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicUpdateUserNamespaceSlot failed: {str(error)}")
    click.echo("publicUpdateUserNamespaceSlot success")
