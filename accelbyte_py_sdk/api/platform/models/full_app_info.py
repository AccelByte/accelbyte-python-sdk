# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model
from ....core import StrEnum

from ..models.app_localization import AppLocalization
from ..models.requirement import Requirement
from ..models.slide import Slide


class GenresEnum(StrEnum):
    ACTION = "Action"
    ADVENTURE = "Adventure"
    CASUAL = "Casual"
    FREETOPLAY = "FreeToPlay"
    INDIE = "Indie"
    MASSIVELYMULTIPLAYER = "MassivelyMultiplayer"
    RPG = "RPG"
    RACING = "Racing"
    SIMULATION = "Simulation"
    SPORTS = "Sports"
    STRATEGY = "Strategy"


class PlatformsEnum(StrEnum):
    ANDROID = "Android"
    IOS = "IOS"
    LINUX = "Linux"
    MACOS = "MacOS"
    WINDOWS = "Windows"


class PlayersEnum(StrEnum):
    COOP = "Coop"
    CROSSPLATFORMMULTI = "CrossPlatformMulti"
    LOCALCOOP = "LocalCoop"
    MMO = "MMO"
    MULTI = "Multi"
    SINGLE = "Single"


class PrimaryGenreEnum(StrEnum):
    ACTION = "Action"
    ADVENTURE = "Adventure"
    CASUAL = "Casual"
    FREETOPLAY = "FreeToPlay"
    INDIE = "Indie"
    MASSIVELYMULTIPLAYER = "MassivelyMultiplayer"
    RPG = "RPG"
    RACING = "Racing"
    SIMULATION = "Simulation"
    SPORTS = "Sports"
    STRATEGY = "Strategy"


class FullAppInfo(Model):
    """Full app info (FullAppInfo)

    Properties:
        item_id: (itemId) REQUIRED str

        namespace: (namespace) REQUIRED str

        carousel: (carousel) OPTIONAL List[Slide]

        developer: (developer) OPTIONAL str

        forum_url: (forumUrl) OPTIONAL str

        genres: (genres) OPTIONAL List[Union[str, GenresEnum]]

        localizations: (localizations) OPTIONAL Dict[str, AppLocalization]

        platform_requirements: (platformRequirements) OPTIONAL Dict[str, List[Requirement]]

        platforms: (platforms) OPTIONAL List[Union[str, PlatformsEnum]]

        players: (players) OPTIONAL List[Union[str, PlayersEnum]]

        primary_genre: (primaryGenre) OPTIONAL Union[str, PrimaryGenreEnum]

        publisher: (publisher) OPTIONAL str

        release_date: (releaseDate) OPTIONAL str

        website_url: (websiteUrl) OPTIONAL str
    """

    # region fields

    item_id: str  # REQUIRED
    namespace: str  # REQUIRED
    carousel: List[Slide]  # OPTIONAL
    developer: str  # OPTIONAL
    forum_url: str  # OPTIONAL
    genres: List[Union[str, GenresEnum]]  # OPTIONAL
    localizations: Dict[str, AppLocalization]  # OPTIONAL
    platform_requirements: Dict[str, List[Requirement]]  # OPTIONAL
    platforms: List[Union[str, PlatformsEnum]]  # OPTIONAL
    players: List[Union[str, PlayersEnum]]  # OPTIONAL
    primary_genre: Union[str, PrimaryGenreEnum]  # OPTIONAL
    publisher: str  # OPTIONAL
    release_date: str  # OPTIONAL
    website_url: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_id(self, value: str) -> FullAppInfo:
        self.item_id = value
        return self

    def with_namespace(self, value: str) -> FullAppInfo:
        self.namespace = value
        return self

    def with_carousel(self, value: List[Slide]) -> FullAppInfo:
        self.carousel = value
        return self

    def with_developer(self, value: str) -> FullAppInfo:
        self.developer = value
        return self

    def with_forum_url(self, value: str) -> FullAppInfo:
        self.forum_url = value
        return self

    def with_genres(self, value: List[Union[str, GenresEnum]]) -> FullAppInfo:
        self.genres = value
        return self

    def with_localizations(self, value: Dict[str, AppLocalization]) -> FullAppInfo:
        self.localizations = value
        return self

    def with_platform_requirements(
        self, value: Dict[str, List[Requirement]]
    ) -> FullAppInfo:
        self.platform_requirements = value
        return self

    def with_platforms(self, value: List[Union[str, PlatformsEnum]]) -> FullAppInfo:
        self.platforms = value
        return self

    def with_players(self, value: List[Union[str, PlayersEnum]]) -> FullAppInfo:
        self.players = value
        return self

    def with_primary_genre(self, value: Union[str, PrimaryGenreEnum]) -> FullAppInfo:
        self.primary_genre = value
        return self

    def with_publisher(self, value: str) -> FullAppInfo:
        self.publisher = value
        return self

    def with_release_date(self, value: str) -> FullAppInfo:
        self.release_date = value
        return self

    def with_website_url(self, value: str) -> FullAppInfo:
        self.website_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "carousel"):
            result["carousel"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.carousel
            ]
        elif include_empty:
            result["carousel"] = []
        if hasattr(self, "developer"):
            result["developer"] = str(self.developer)
        elif include_empty:
            result["developer"] = ""
        if hasattr(self, "forum_url"):
            result["forumUrl"] = str(self.forum_url)
        elif include_empty:
            result["forumUrl"] = ""
        if hasattr(self, "genres"):
            result["genres"] = [str(i0) for i0 in self.genres]
        elif include_empty:
            result["genres"] = []
        if hasattr(self, "localizations"):
            result["localizations"] = {
                str(k0): v0.to_dict(include_empty=include_empty)
                for k0, v0 in self.localizations.items()
            }
        elif include_empty:
            result["localizations"] = {}
        if hasattr(self, "platform_requirements"):
            result["platformRequirements"] = {
                str(k0): [i1.to_dict(include_empty=include_empty) for i1 in v0]
                for k0, v0 in self.platform_requirements.items()
            }
        elif include_empty:
            result["platformRequirements"] = {}
        if hasattr(self, "platforms"):
            result["platforms"] = [str(i0) for i0 in self.platforms]
        elif include_empty:
            result["platforms"] = []
        if hasattr(self, "players"):
            result["players"] = [str(i0) for i0 in self.players]
        elif include_empty:
            result["players"] = []
        if hasattr(self, "primary_genre"):
            result["primaryGenre"] = str(self.primary_genre)
        elif include_empty:
            result["primaryGenre"] = Union[str, PrimaryGenreEnum]()
        if hasattr(self, "publisher"):
            result["publisher"] = str(self.publisher)
        elif include_empty:
            result["publisher"] = ""
        if hasattr(self, "release_date"):
            result["releaseDate"] = str(self.release_date)
        elif include_empty:
            result["releaseDate"] = ""
        if hasattr(self, "website_url"):
            result["websiteUrl"] = str(self.website_url)
        elif include_empty:
            result["websiteUrl"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: str,
        namespace: str,
        carousel: Optional[List[Slide]] = None,
        developer: Optional[str] = None,
        forum_url: Optional[str] = None,
        genres: Optional[List[Union[str, GenresEnum]]] = None,
        localizations: Optional[Dict[str, AppLocalization]] = None,
        platform_requirements: Optional[Dict[str, List[Requirement]]] = None,
        platforms: Optional[List[Union[str, PlatformsEnum]]] = None,
        players: Optional[List[Union[str, PlayersEnum]]] = None,
        primary_genre: Optional[Union[str, PrimaryGenreEnum]] = None,
        publisher: Optional[str] = None,
        release_date: Optional[str] = None,
        website_url: Optional[str] = None,
    ) -> FullAppInfo:
        instance = cls()
        instance.item_id = item_id
        instance.namespace = namespace
        if carousel is not None:
            instance.carousel = carousel
        if developer is not None:
            instance.developer = developer
        if forum_url is not None:
            instance.forum_url = forum_url
        if genres is not None:
            instance.genres = genres
        if localizations is not None:
            instance.localizations = localizations
        if platform_requirements is not None:
            instance.platform_requirements = platform_requirements
        if platforms is not None:
            instance.platforms = platforms
        if players is not None:
            instance.players = players
        if primary_genre is not None:
            instance.primary_genre = primary_genre
        if publisher is not None:
            instance.publisher = publisher
        if release_date is not None:
            instance.release_date = release_date
        if website_url is not None:
            instance.website_url = website_url
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> FullAppInfo:
        instance = cls()
        if not dict_:
            return instance
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "carousel" in dict_ and dict_["carousel"] is not None:
            instance.carousel = [
                Slide.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["carousel"]
            ]
        elif include_empty:
            instance.carousel = []
        if "developer" in dict_ and dict_["developer"] is not None:
            instance.developer = str(dict_["developer"])
        elif include_empty:
            instance.developer = ""
        if "forumUrl" in dict_ and dict_["forumUrl"] is not None:
            instance.forum_url = str(dict_["forumUrl"])
        elif include_empty:
            instance.forum_url = ""
        if "genres" in dict_ and dict_["genres"] is not None:
            instance.genres = [str(i0) for i0 in dict_["genres"]]
        elif include_empty:
            instance.genres = []
        if "localizations" in dict_ and dict_["localizations"] is not None:
            instance.localizations = {
                str(k0): AppLocalization.create_from_dict(
                    v0, include_empty=include_empty
                )
                for k0, v0 in dict_["localizations"].items()
            }
        elif include_empty:
            instance.localizations = {}
        if (
            "platformRequirements" in dict_
            and dict_["platformRequirements"] is not None
        ):
            instance.platform_requirements = {
                str(k0): [
                    Requirement.create_from_dict(i1, include_empty=include_empty)
                    for i1 in v0
                ]
                for k0, v0 in dict_["platformRequirements"].items()
            }
        elif include_empty:
            instance.platform_requirements = {}
        if "platforms" in dict_ and dict_["platforms"] is not None:
            instance.platforms = [str(i0) for i0 in dict_["platforms"]]
        elif include_empty:
            instance.platforms = []
        if "players" in dict_ and dict_["players"] is not None:
            instance.players = [str(i0) for i0 in dict_["players"]]
        elif include_empty:
            instance.players = []
        if "primaryGenre" in dict_ and dict_["primaryGenre"] is not None:
            instance.primary_genre = str(dict_["primaryGenre"])
        elif include_empty:
            instance.primary_genre = Union[str, PrimaryGenreEnum]()
        if "publisher" in dict_ and dict_["publisher"] is not None:
            instance.publisher = str(dict_["publisher"])
        elif include_empty:
            instance.publisher = ""
        if "releaseDate" in dict_ and dict_["releaseDate"] is not None:
            instance.release_date = str(dict_["releaseDate"])
        elif include_empty:
            instance.release_date = ""
        if "websiteUrl" in dict_ and dict_["websiteUrl"] is not None:
            instance.website_url = str(dict_["websiteUrl"])
        elif include_empty:
            instance.website_url = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FullAppInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FullAppInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[FullAppInfo, List[FullAppInfo], Dict[Any, FullAppInfo]]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "itemId": "item_id",
            "namespace": "namespace",
            "carousel": "carousel",
            "developer": "developer",
            "forumUrl": "forum_url",
            "genres": "genres",
            "localizations": "localizations",
            "platformRequirements": "platform_requirements",
            "platforms": "platforms",
            "players": "players",
            "primaryGenre": "primary_genre",
            "publisher": "publisher",
            "releaseDate": "release_date",
            "websiteUrl": "website_url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "itemId": True,
            "namespace": True,
            "carousel": False,
            "developer": False,
            "forumUrl": False,
            "genres": False,
            "localizations": False,
            "platformRequirements": False,
            "platforms": False,
            "players": False,
            "primaryGenre": False,
            "publisher": False,
            "releaseDate": False,
            "websiteUrl": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "genres": [
                "Action",
                "Adventure",
                "Casual",
                "FreeToPlay",
                "Indie",
                "MassivelyMultiplayer",
                "RPG",
                "Racing",
                "Simulation",
                "Sports",
                "Strategy",
            ],
            "platforms": ["Android", "IOS", "Linux", "MacOS", "Windows"],
            "players": [
                "Coop",
                "CrossPlatformMulti",
                "LocalCoop",
                "MMO",
                "Multi",
                "Single",
            ],
            "primaryGenre": [
                "Action",
                "Adventure",
                "Casual",
                "FreeToPlay",
                "Indie",
                "MassivelyMultiplayer",
                "RPG",
                "Racing",
                "Simulation",
                "Sports",
                "Strategy",
            ],
        }

    # endregion static methods
