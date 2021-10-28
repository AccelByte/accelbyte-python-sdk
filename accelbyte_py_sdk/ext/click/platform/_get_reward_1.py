import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_reward_1 as get_reward_1_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import RewardInfo


@click.command()
@click.argument("reward_id", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_reward_1(
        reward_id: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_reward_1_internal.__doc__)
    result, error = get_reward_1_internal(
        reward_id=reward_id,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getReward_1 failed: {str(error)}")
    click.echo("getReward_1 success")
