import click

from .core import initialize
from .ext.click.iam import commands as iam_commands
from .ext.click.achievement import commands as achievement_commands
from .ext.click.basic import commands as basic_commands
from .ext.click.cloudsave import commands as cloudsave_commands
from .ext.click.dslogmanager import commands as dslogmanager_commands
from .ext.click.dsmc import commands as dsmc_commands
from .ext.click.eventlog import commands as eventlog_commands
from .ext.click.gametelemetry import commands as gametelemetry_commands
from .ext.click.gdpr import commands as gdpr_commands
from .ext.click.group import commands as group_commands
from .ext.click.leaderboard import commands as leaderboard_commands
from .ext.click.legal import commands as legal_commands
from .ext.click.lobby import commands as lobby_commands
from .ext.click.matchmaking import commands as matchmaking_commands
from .ext.click.platform import commands as platform_commands
from .ext.click.qosm import commands as qosm_commands
from .ext.click.sessionbrowser import commands as sessionbrowser_commands
from .ext.click.social import commands as social_commands
from .ext.click.ugc import commands as ugc_commands


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
