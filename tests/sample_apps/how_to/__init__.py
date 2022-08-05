DOTENV_FILE = "how_to.env"

from ._achievement import AchievementTestCase
from ._basic import BasicTestCase
from ._cloudsave import CloudSaveTestCase
from ._dslogmanager import DSLogManagerTestCase
from ._dsmc import DSMCTestCase
from ._gdpr import GDPRTestCase
from ._group import GroupTestCase
from ._iam import IAMTestCase
from ._leaderboard import LeaderboardTestCase
from ._legal import LegalTestCase
from ._lobby import AsyncLobbyTestCase, LobbyTestCase
from ._matchmaking import MatchmakingTestCase
from ._platform import PlatformTestCase
from ._qosm import QosmTestCase
from ._seasonpass import SeasonPassTestCase
from ._sessionbrowser import SessionBrowserTestCase
from ._social import SocialTestCase
from ._ugc import UGCTestCase

from ._services_auth import AuthServicesTestCase

from ._docs import DocsTestCase
