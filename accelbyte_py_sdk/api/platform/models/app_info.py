# justice-platform-service (3.34.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from ..models.requirement import Requirement
from ..models.slide import Slide


class AppInfo(Model):
    """App info (AppInfo)

    Properties:
        slogan: (slogan) OPTIONAL str

        announcement: (announcement) OPTIONAL str

        item_id: (itemId) REQUIRED str

        namespace: (namespace) REQUIRED str

        carousel: (carousel) OPTIONAL List[Slide]

        developer: (developer) OPTIONAL str

        publisher: (publisher) OPTIONAL str

        website_url: (websiteUrl) OPTIONAL str

        forum_url: (forumUrl) OPTIONAL str

        platforms: (platforms) OPTIONAL List[str]

        platform_requirements: (platformRequirements) OPTIONAL Dict[str, List[Requirement]]

        primary_genre: (primaryGenre) OPTIONAL str

        genres: (genres) OPTIONAL List[str]

        players: (players) OPTIONAL List[str]

        release_date: (releaseDate) OPTIONAL str

        region: (region) OPTIONAL str

        language: (language) OPTIONAL str
    """

    # region fields

    slogan: str                                                                                    # OPTIONAL
    announcement: str                                                                              # OPTIONAL
    item_id: str                                                                                   # REQUIRED
    namespace: str                                                                                 # REQUIRED
    carousel: List[Slide]                                                                          # OPTIONAL
    developer: str                                                                                 # OPTIONAL
    publisher: str                                                                                 # OPTIONAL
    website_url: str                                                                               # OPTIONAL
    forum_url: str                                                                                 # OPTIONAL
    platforms: List[str]                                                                           # OPTIONAL
    platform_requirements: Dict[str, List[Requirement]]                                            # OPTIONAL
    primary_genre: str                                                                             # OPTIONAL
    genres: List[str]                                                                              # OPTIONAL
    players: List[str]                                                                             # OPTIONAL
    release_date: str                                                                              # OPTIONAL
    region: str                                                                                    # OPTIONAL
    language: str                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_slogan(self, value: str) -> AppInfo:
        self.slogan = value
        return self

    def with_announcement(self, value: str) -> AppInfo:
        self.announcement = value
        return self

    def with_item_id(self, value: str) -> AppInfo:
        self.item_id = value
        return self

    def with_namespace(self, value: str) -> AppInfo:
        self.namespace = value
        return self

    def with_carousel(self, value: List[Slide]) -> AppInfo:
        self.carousel = value
        return self

    def with_developer(self, value: str) -> AppInfo:
        self.developer = value
        return self

    def with_publisher(self, value: str) -> AppInfo:
        self.publisher = value
        return self

    def with_website_url(self, value: str) -> AppInfo:
        self.website_url = value
        return self

    def with_forum_url(self, value: str) -> AppInfo:
        self.forum_url = value
        return self

    def with_platforms(self, value: List[str]) -> AppInfo:
        self.platforms = value
        return self

    def with_platform_requirements(self, value: Dict[str, List[Requirement]]) -> AppInfo:
        self.platform_requirements = value
        return self

    def with_primary_genre(self, value: str) -> AppInfo:
        self.primary_genre = value
        return self

    def with_genres(self, value: List[str]) -> AppInfo:
        self.genres = value
        return self

    def with_players(self, value: List[str]) -> AppInfo:
        self.players = value
        return self

    def with_release_date(self, value: str) -> AppInfo:
        self.release_date = value
        return self

    def with_region(self, value: str) -> AppInfo:
        self.region = value
        return self

    def with_language(self, value: str) -> AppInfo:
        self.language = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "slogan"):
            result["slogan"] = str(self.slogan)
        elif include_empty:
            result["slogan"] = str()
        if hasattr(self, "announcement"):
            result["announcement"] = str(self.announcement)
        elif include_empty:
            result["announcement"] = str()
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "carousel"):
            result["carousel"] = [i0.to_dict(include_empty=include_empty) for i0 in self.carousel]
        elif include_empty:
            result["carousel"] = []
        if hasattr(self, "developer"):
            result["developer"] = str(self.developer)
        elif include_empty:
            result["developer"] = str()
        if hasattr(self, "publisher"):
            result["publisher"] = str(self.publisher)
        elif include_empty:
            result["publisher"] = str()
        if hasattr(self, "website_url"):
            result["websiteUrl"] = str(self.website_url)
        elif include_empty:
            result["websiteUrl"] = str()
        if hasattr(self, "forum_url"):
            result["forumUrl"] = str(self.forum_url)
        elif include_empty:
            result["forumUrl"] = str()
        if hasattr(self, "platforms"):
            result["platforms"] = [str(i0) for i0 in self.platforms]
        elif include_empty:
            result["platforms"] = []
        if hasattr(self, "platform_requirements"):
            result["platformRequirements"] = {str(k0): [i1.to_dict(include_empty=include_empty) for i1 in v0] for k0, v0 in self.platform_requirements.items()}
        elif include_empty:
            result["platformRequirements"] = {}
        if hasattr(self, "primary_genre"):
            result["primaryGenre"] = str(self.primary_genre)
        elif include_empty:
            result["primaryGenre"] = str()
        if hasattr(self, "genres"):
            result["genres"] = [str(i0) for i0 in self.genres]
        elif include_empty:
            result["genres"] = []
        if hasattr(self, "players"):
            result["players"] = [str(i0) for i0 in self.players]
        elif include_empty:
            result["players"] = []
        if hasattr(self, "release_date"):
            result["releaseDate"] = str(self.release_date)
        elif include_empty:
            result["releaseDate"] = str()
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: str,
        namespace: str,
        slogan: Optional[str] = None,
        announcement: Optional[str] = None,
        carousel: Optional[List[Slide]] = None,
        developer: Optional[str] = None,
        publisher: Optional[str] = None,
        website_url: Optional[str] = None,
        forum_url: Optional[str] = None,
        platforms: Optional[List[str]] = None,
        platform_requirements: Optional[Dict[str, List[Requirement]]] = None,
        primary_genre: Optional[str] = None,
        genres: Optional[List[str]] = None,
        players: Optional[List[str]] = None,
        release_date: Optional[str] = None,
        region: Optional[str] = None,
        language: Optional[str] = None,
    ) -> AppInfo:
        instance = cls()
        instance.item_id = item_id
        instance.namespace = namespace
        if slogan is not None:
            instance.slogan = slogan
        if announcement is not None:
            instance.announcement = announcement
        if carousel is not None:
            instance.carousel = carousel
        if developer is not None:
            instance.developer = developer
        if publisher is not None:
            instance.publisher = publisher
        if website_url is not None:
            instance.website_url = website_url
        if forum_url is not None:
            instance.forum_url = forum_url
        if platforms is not None:
            instance.platforms = platforms
        if platform_requirements is not None:
            instance.platform_requirements = platform_requirements
        if primary_genre is not None:
            instance.primary_genre = primary_genre
        if genres is not None:
            instance.genres = genres
        if players is not None:
            instance.players = players
        if release_date is not None:
            instance.release_date = release_date
        if region is not None:
            instance.region = region
        if language is not None:
            instance.language = language
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AppInfo:
        instance = cls()
        if not dict_:
            return instance
        if "slogan" in dict_ and dict_["slogan"] is not None:
            instance.slogan = str(dict_["slogan"])
        elif include_empty:
            instance.slogan = str()
        if "announcement" in dict_ and dict_["announcement"] is not None:
            instance.announcement = str(dict_["announcement"])
        elif include_empty:
            instance.announcement = str()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "carousel" in dict_ and dict_["carousel"] is not None:
            instance.carousel = [Slide.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["carousel"]]
        elif include_empty:
            instance.carousel = []
        if "developer" in dict_ and dict_["developer"] is not None:
            instance.developer = str(dict_["developer"])
        elif include_empty:
            instance.developer = str()
        if "publisher" in dict_ and dict_["publisher"] is not None:
            instance.publisher = str(dict_["publisher"])
        elif include_empty:
            instance.publisher = str()
        if "websiteUrl" in dict_ and dict_["websiteUrl"] is not None:
            instance.website_url = str(dict_["websiteUrl"])
        elif include_empty:
            instance.website_url = str()
        if "forumUrl" in dict_ and dict_["forumUrl"] is not None:
            instance.forum_url = str(dict_["forumUrl"])
        elif include_empty:
            instance.forum_url = str()
        if "platforms" in dict_ and dict_["platforms"] is not None:
            instance.platforms = [str(i0) for i0 in dict_["platforms"]]
        elif include_empty:
            instance.platforms = []
        if "platformRequirements" in dict_ and dict_["platformRequirements"] is not None:
            instance.platform_requirements = {str(k0): [Requirement.create_from_dict(i1, include_empty=include_empty) for i1 in v0] for k0, v0 in dict_["platformRequirements"].items()}
        elif include_empty:
            instance.platform_requirements = {}
        if "primaryGenre" in dict_ and dict_["primaryGenre"] is not None:
            instance.primary_genre = str(dict_["primaryGenre"])
        elif include_empty:
            instance.primary_genre = str()
        if "genres" in dict_ and dict_["genres"] is not None:
            instance.genres = [str(i0) for i0 in dict_["genres"]]
        elif include_empty:
            instance.genres = []
        if "players" in dict_ and dict_["players"] is not None:
            instance.players = [str(i0) for i0 in dict_["players"]]
        elif include_empty:
            instance.players = []
        if "releaseDate" in dict_ and dict_["releaseDate"] is not None:
            instance.release_date = str(dict_["releaseDate"])
        elif include_empty:
            instance.release_date = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "slogan": "slogan",
            "announcement": "announcement",
            "itemId": "item_id",
            "namespace": "namespace",
            "carousel": "carousel",
            "developer": "developer",
            "publisher": "publisher",
            "websiteUrl": "website_url",
            "forumUrl": "forum_url",
            "platforms": "platforms",
            "platformRequirements": "platform_requirements",
            "primaryGenre": "primary_genre",
            "genres": "genres",
            "players": "players",
            "releaseDate": "release_date",
            "region": "region",
            "language": "language",
        }

    # endregion static methods
