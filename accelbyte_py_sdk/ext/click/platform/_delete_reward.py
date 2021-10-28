import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import delete_reward as delete_reward_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import RewardInfo


@click.command()
@click.argument("reward_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_reward(
        reward_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_reward_internal.__doc__)
    result, error = delete_reward_internal(
        reward_id=reward_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteReward failed: {str(error)}")
    click.echo("deleteReward success")
