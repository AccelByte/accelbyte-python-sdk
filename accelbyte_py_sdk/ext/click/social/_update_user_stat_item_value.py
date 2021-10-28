import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import update_user_stat_item_value as update_user_stat_item_value_internal
from ....api.social.models import ErrorEntity
from ....api.social.models import StatItemIncResult
from ....api.social.models import StatItemUpdate
from ....api.social.models import ValidationErrorEntity


@click.command()
@click.argument("user_id", type=str)
@click.argument("stat_code", type=str)
@click.option("--body", "body", type=str)
@click.option("--additional_key", "additional_key", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_user_stat_item_value(
        user_id: str,
        stat_code: str,
        body: Optional[str] = None,
        additional_key: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_user_stat_item_value_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = StatItemUpdate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_user_stat_item_value_internal(
        user_id=user_id,
        stat_code=stat_code,
        body=body,
        additional_key=additional_key,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateUserStatItemValue failed: {str(error)}")
    click.echo("updateUserStatItemValue success")
