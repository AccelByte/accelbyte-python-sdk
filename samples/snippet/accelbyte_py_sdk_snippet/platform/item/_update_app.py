import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_app
from accelbyte_py_sdk.api.platform.models import AppUpdate
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullAppInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: AppUpdate
carousel: List[Slide]
Definition: List[Slide]
    alt: str
    preview_url: str
    thumbnail_url: str
    type_: str
    url: str
    video_source: str
developer: str
forum_url: str
genres: List[str]
localizations: Dict[str, AppLocalization]
platform_requirements: Dict[str, List[Requirement]]
platforms: List[str]
players: List[str]
primary_genre: str
publisher: str
release_date: str
website_url: str

Example: '{"carousel": [{"alt": "cx9hYTjSYZYDrH1K", "previewUrl": "oULMQYMuRyDrHyHL", "thumbnailUrl": "87X8CsSSO0vvy8GI", "type": "image", "url": "uimriH8eoo2z2kNy", "videoSource": "generic"}, {"alt": "vA0vlc3ZZvymy64o", "previewUrl": "XACOVpmdFfdsOCBJ", "thumbnailUrl": "x3CkMavVvJ4PMtYf", "type": "video", "url": "oYCuObgxyNMlnAU3", "videoSource": "vimeo"}, {"alt": "eYwesaZk4mwmWta9", "previewUrl": "IRe64oZZdwpz3ca4", "thumbnailUrl": "EScED2Q1tdmUHajT", "type": "video", "url": "a1EZxV0WnWTa4LNI", "videoSource": "generic"}], "developer": "0ym1YgWmyqdxLuHP", "forumUrl": "RQM6KKmlwxMZvEWK", "genres": ["Indie", "Action", "MassivelyMultiplayer"], "localizations": {"J4fzs2k2LsZAzrXA": {"announcement": "GB8PrljJLjn3a389", "slogan": "iz1eipiHnLYFq5P2"}, "0ypxOs1fXUBmYi32": {"announcement": "0pw2SxLBGwPBO0Ks", "slogan": "ecF1c5ZxOTbNfLT1"}, "6gbSwvHzluCB0K4j": {"announcement": "g13hBw5qkXFhzC55", "slogan": "sp09ammWLFFz3McR"}}, "platformRequirements": {"E7NFZRS9zBuHVdEn": [{"additionals": "Rgb2kflsuzHwncq3", "directXVersion": "hpK9aHO6FspE8laW", "diskSpace": "5hwGmCbSzLYkjlp9", "graphics": "7ql0M6IpbasyJ1Wi", "label": "WzwPDCRVfy2UkPRi", "osVersion": "JRwXH2KECyoI3AhX", "processor": "mhKrVhxdBW4jakHf", "ram": "knj8ED07t66w3dF1", "soundCard": "68hJvnarPNO6XJlZ"}, {"additionals": "QqsAD6gyVNLwKMNJ", "directXVersion": "tq3V5Gg4ChqyKRF2", "diskSpace": "JOqpVbmOZ9pHFFP0", "graphics": "FaJ7Lt6BewsCcfyz", "label": "vIeK6McIRpLDBlIs", "osVersion": "hCCH5HsrWOxcqZxe", "processor": "APP5OdwmQsEnB24j", "ram": "wtLfVZBsRBEdzAHa", "soundCard": "7VL8a44txHeDUagw"}, {"additionals": "rQbkLs8oHOQoiSnB", "directXVersion": "fp5f2nIfAL0VMLpn", "diskSpace": "uPwjuH3lvxg5yBnF", "graphics": "JvY2OW4TfTPhhFTj", "label": "nqhE5AWKR3XRHWpL", "osVersion": "wOs7GPiziW5ZNboG", "processor": "68Mn484Z4ZAL4Hg6", "ram": "grG1jld6S7K1NZxE", "soundCard": "napYWwQGTggxOBdo"}], "wecV2jFSHyt4AVSB": [{"additionals": "2d28etILh0SR1or1", "directXVersion": "dUtuKXQlvwlhpIsM", "diskSpace": "IeP9Wf2tioeMkc5G", "graphics": "9NFvWp9jroQgeR1a", "label": "nI8Xt1fD2n3KMe1S", "osVersion": "xSoPPoOPTYUU8rcn", "processor": "tvJnOhmHutdXd9Ty", "ram": "VMXsmCG0nNgNvtuI", "soundCard": "x3Jte4zQ7QmHRMGU"}, {"additionals": "8vX2D7nQl6oEpfRK", "directXVersion": "AXfIvte9LNjlEagg", "diskSpace": "77QCC0WL9iqVMzie", "graphics": "OZCh2nIvraIoPRc4", "label": "ixnwBLdVlpT4MXeP", "osVersion": "6Mwy4p3t5n87Zkgh", "processor": "aIMxPoF7543q6fck", "ram": "Nxtl151bmhyhtwZO", "soundCard": "M80xjbcW1z8gzewE"}, {"additionals": "KY86KvYG3akptUW9", "directXVersion": "LDN4bn5B1Z0FmdGX", "diskSpace": "10KupvbiOJ6bmPm6", "graphics": "e7u5sq2jB6vNfjni", "label": "rmiymgWeWmTdLf6u", "osVersion": "NYh7ERTulxfVQBCd", "processor": "7tFPQNESS4jLUAde", "ram": "PRkiHnxQlHPG9fb6", "soundCard": "Zwxt0RsFMqoUMN4p"}], "UWbGRzjbqBdKG3yf": [{"additionals": "Pkc8ln1WLQ5DP3dz", "directXVersion": "8cY5lIqmV7aHfbZB", "diskSpace": "JuDzbgqsOX5Hq3YU", "graphics": "i1qDYHTH6mMialsa", "label": "o9Ecrs7LvlDoDgzw", "osVersion": "L92lJwhLxkrHiMHT", "processor": "dZ11AIbXfLJ8heFE", "ram": "NQJWHGDjCJlotSrs", "soundCard": "QXu0JXLfenbQyVKx"}, {"additionals": "lMqpGqsductlEjw1", "directXVersion": "1tK7qfgc5qcJEEnb", "diskSpace": "guIezH5EXiphyErd", "graphics": "aBOlN09FwweJOBj5", "label": "bD9XkBDhIY5BMFdl", "osVersion": "Kdn9vldhYkPhNlOD", "processor": "y2Dz2Ij2J7g1aOtS", "ram": "sKBMAHEHp0z7vNDf", "soundCard": "yI6m0iuKcTICW3PF"}, {"additionals": "Yg8vO1Cz8Lv82IH0", "directXVersion": "Pl1SN4sKFruarjms", "diskSpace": "DMQC8F1sdV1SO2vy", "graphics": "dqDaIfwBdslp1L7L", "label": "DepvKQjecpyZzvpK", "osVersion": "s9BPpJSV7QBqnVNq", "processor": "08SvSiRx4aP6vSJP", "ram": "25MXFSPwjsaTVTxg", "soundCard": "TimYl6Vgpv6xImHZ"}]}, "platforms": ["Android", "Android", "Windows"], "players": ["MMO", "Multi", "Multi"], "primaryGenre": "FreeToPlay", "publisher": "CcopAxj244VVrmQv", "releaseDate": "1980-05-19T00:00:00Z", "websiteUrl": "xHVGYdj6bwy06rD1"}'
"""

result, error = update_app(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
