from .docs import DocsTestCase

from .api.achievement import AchievementTestCase
from .api.ams import AMSTestCase
from .api.basic import BasicTestCase
from .api.challenge import ChallengeTestCase
from .api.chat import ChatTestCase
from .api.cloudsave import CloudSaveTestCase

# from .api.dsartifact import DSArtifactTestCase
# from .api.dslogmanager import DSLogManagerTestCase
# from .api.dsmc import DSMCTestCase, DSMCSessionTestCase
from .api.gametelemetry import GametelemetryTestCase
from .api.gdpr import GDPRTestCase
from .api.group import GroupTestCase
from .api.iam import IAMTestCase
from .api.inventory import InventoryTestCase
from .api.leaderboard import LeaderboardTestCase
from .api.legal import LegalTestCase
from .api.lobby import AsyncLobbyTestCase, LobbyTestCase
from .api.match2 import Match2TestCase
from .api.matchmaking import MatchmakingTestCase
from .api.platformx import PlatformTestCase

# from .api.qosm import QosmTestCase
from .api.reporting import ReportingTestCase
from .api.seasonpass import SeasonPassTestCase
from .api.session import SessionTestCase
from .api.sessionbrowser import SessionBrowserTestCase
from .api.sessionhistory import SessionHistoryTestCase
from .api.social import SocialTestCase
from .api.ugc import UGCTestCase

from .services.auth import AuthServicesTestCase
