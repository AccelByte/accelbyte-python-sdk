import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import update_reward as update_reward_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import RewardInfo
from ....api.platform.models import RewardUpdate


@click.command()
@click.argument("reward_id", type=str)
@click.option("--body", "body", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_reward(
        reward_id: str,
        body: Optional[str] = None,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_reward_internal.__doc__)
    try:
        body_json = json.loads(body)
        body = RewardUpdate.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}")
    result, error = update_reward_internal(
        reward_id=reward_id,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateReward failed: {str(error)}")
    click.echo("updateReward success")
