import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.social import public_inc_user_stat_item_value as public_inc_user_stat_item_value_internal
from ....api.social.models import ErrorEntity
from ....api.social.models import StatItemInc
from ....api.social.models import StatItemIncResult


@click.command()
@click.argument("user_id", type=str)
@click.argument("stat_code", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def public_inc_user_stat_item_value(
        user_id: str,
        stat_code: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(public_inc_user_stat_item_value_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = StatItemInc.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = public_inc_user_stat_item_value_internal(
        user_id=user_id,
        stat_code=stat_code,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicIncUserStatItemValue failed: {str(error)}")
    click.echo("publicIncUserStatItemValue success")
