from .docs import DocsTestCase

from .api.basic import BasicTestCase
from .api.dslogmanager import DSLogManagerTestCase
from .api.group import GroupTestCase
from .api.iam import IAMTestCase
from .api.leaderboard import LeaderboardTestCase
from .api.legal import LegalTestCase
from .api.lobby import AsyncLobbyTestCase, LobbyTestCase
from .api.match2 import Match2TestCase
from .api.matchmaking import MatchmakingTestCase
from .api.qosm import QosmTestCase
from .api.seasonpass import SeasonPassTestCase
from .api.sessionbrowser import SessionBrowserTestCase
from .api.social import SocialTestCase

from .services.auth import AuthServicesTestCase
