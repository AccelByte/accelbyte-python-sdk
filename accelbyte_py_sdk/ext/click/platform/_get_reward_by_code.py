import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.platform import get_reward_by_code as get_reward_by_code_internal
from ....api.platform.models import ErrorEntity
from ....api.platform.models import RewardInfo


@click.command()
@click.argument("reward_code", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_reward_by_code(
        reward_code: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_reward_by_code_internal.__doc__)
    result, error = get_reward_by_code_internal(
        reward_code=reward_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getRewardByCode failed: {str(error)}")
    click.echo("getRewardByCode success")
