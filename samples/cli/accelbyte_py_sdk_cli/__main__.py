import click

from accelbyte_py_sdk import initialize
from .iam import commands as iam_commands
from .achievement import commands as achievement_commands
from .basic import commands as basic_commands
from .cloudsave import commands as cloudsave_commands
from .dslogmanager import commands as dslogmanager_commands
from .dsmc import commands as dsmc_commands
from .eventlog import commands as eventlog_commands
from .gametelemetry import commands as gametelemetry_commands
from .gdpr import commands as gdpr_commands
from .group import commands as group_commands
from .leaderboard import commands as leaderboard_commands
from .legal import commands as legal_commands
from .lobby import commands as lobby_commands
from .matchmaking import commands as matchmaking_commands
from .platform import commands as platform_commands
from .qosm import commands as qosm_commands
from .sessionbrowser import commands as sessionbrowser_commands
from .social import commands as social_commands
from .ugc import commands as ugc_commands


@click.group()
def entry_point():
    initialize()


def add_commands(grp, cmds, prefix: str = None):
    for cmd in cmds:
        grp.add_command(cmd, name=f"{f'{prefix}-' if prefix is not None else ''}{cmd.name}")


add_commands(entry_point, iam_commands, prefix="iam")
add_commands(entry_point, achievement_commands, prefix="achievement")
add_commands(entry_point, basic_commands, prefix="basic")
add_commands(entry_point, dslogmanager_commands, prefix="dslogmanager")
add_commands(entry_point, cloudsave_commands, prefix="cloudsave")
add_commands(entry_point, dsmc_commands, prefix="dsmc")
add_commands(entry_point, eventlog_commands, prefix="eventlog")
add_commands(entry_point, gametelemetry_commands, prefix="gametelemetry")
add_commands(entry_point, gdpr_commands, prefix="gdpr")
add_commands(entry_point, group_commands, prefix="group")
add_commands(entry_point, leaderboard_commands, prefix="leaderboard")
add_commands(entry_point, legal_commands, prefix="legal")
add_commands(entry_point, lobby_commands, prefix="lobby")
add_commands(entry_point, matchmaking_commands, prefix="matchmaking")
add_commands(entry_point, platform_commands, prefix="platform")
add_commands(entry_point, qosm_commands, prefix="qosm")
add_commands(entry_point, sessionbrowser_commands, prefix="sessionbrowser")
add_commands(entry_point, social_commands, prefix="social")
add_commands(entry_point, ugc_commands, prefix="ugc")


if __name__ == "__main__":
    entry_point()
