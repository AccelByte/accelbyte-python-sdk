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

Example: '{"carousel": [{"alt": "lV2AgvlrwbE5NVFQ", "previewUrl": "QlE3plKsae7ioqh3", "thumbnailUrl": "2k0WQYww5gewuh3v", "type": "video", "url": "ASjTJE9OJ4YHcMz0", "videoSource": "generic"}, {"alt": "3saOU9La3xDuMBOn", "previewUrl": "BrbpOuiakAsjUrsx", "thumbnailUrl": "hYHcvqDh8CXKBecw", "type": "video", "url": "SPG1JRrI6M9dLaT3", "videoSource": "youtube"}, {"alt": "mLxu4yzGAQaoCKWd", "previewUrl": "xR9V55yx4yM8PbQA", "thumbnailUrl": "54WOOrMbs0Dp5cOG", "type": "image", "url": "UTI7qKyF181bSbmQ", "videoSource": "vimeo"}], "developer": "7bRDKkN4PN0PdADD", "forumUrl": "XFA0Ud51lIJMr3dt", "genres": ["Indie", "FreeToPlay", "Indie"], "localizations": {"dILuGvJ8BoBUYWft": {"announcement": "F52ggJWu5jzLZ5L5", "slogan": "OgERNQEST3LndPhj"}, "73jGQf2tO8hNVbdE": {"announcement": "rBnKRbcjrKn6hPCd", "slogan": "QduxdZAz2KErsFGB"}, "C8WQ8OWz9dcfy58h": {"announcement": "qbsLOavC0uODxSE2", "slogan": "74o0xjiAm4ptFBQb"}}, "platformRequirements": {"OtYO0FDEEj8e7oP1": [{"additionals": "RLxRIMrBcO2Lz7fz", "directXVersion": "HhRgqpzK7OjuqCrY", "diskSpace": "YaS42FOf9GZKUTLI", "graphics": "VaxCn2v6og6rw9G8", "label": "hdw72jjCJOpoVJzU", "osVersion": "1NoaHch5Zzsrqwe1", "processor": "5ZZW7QfzSm45xUu4", "ram": "q4i22xcZ9nMwFviH", "soundCard": "iL2aMhX0eT6Rw4lj"}, {"additionals": "w9XTdbyJDvwYoIvI", "directXVersion": "jQQxX0VqU9D4MJdi", "diskSpace": "GMI3JYTzGZpFjAef", "graphics": "y8iAfyo0TQxMOe0u", "label": "cwZqMpocSYrCsjR6", "osVersion": "oM2LAF4PmlPYilcI", "processor": "jxEBhP4g2nPPsIIv", "ram": "ET3MO0V4GB0doNTH", "soundCard": "Z5Y4dejmArthOzPj"}, {"additionals": "v2lR3RhBxISWWjrv", "directXVersion": "F8U38XE1bJfYkqTg", "diskSpace": "mo8k1oTormjH9PWZ", "graphics": "FPgDGKiaRdtVX1BO", "label": "CRSDP7m5PBXiKxVx", "osVersion": "et1Tm8AICPKxYCOH", "processor": "2vAz0T5E0DzUX4qf", "ram": "KCg1kPpuWzDNXYzm", "soundCard": "OdMxRGXqTozCPWMp"}], "836sDPrS8IsgiyUm": [{"additionals": "0qW5qlBT5mIGUPMv", "directXVersion": "Qf5QvjNMZ1wIlpAn", "diskSpace": "bJwPbJYVAHGEdRD2", "graphics": "KvEBvMtGNVaiMmfQ", "label": "fVVQb1lJDbvz9Xts", "osVersion": "kyxXVWIoi1A9Inlo", "processor": "fMDC8gUNBNnLm4uW", "ram": "OicmILEFW0NdBa7V", "soundCard": "w1YAm8dGjpQ4blLp"}, {"additionals": "ExBcCAS1LplqaDIQ", "directXVersion": "lnMejaEePuodUACb", "diskSpace": "jeELTAcgZu7JuRTO", "graphics": "jeTscBKLeeuU6oLf", "label": "mVeHDDfQf6LhrcmN", "osVersion": "bsPIpL6bzioBI4ma", "processor": "6gvuuJmSqck1sjCB", "ram": "mmwMihAytD076Yr7", "soundCard": "7Trk51obBpOP8gSz"}, {"additionals": "PO6hJV55sPWk5QiD", "directXVersion": "Xlpro0c3EOSoXJtM", "diskSpace": "nB3Ka9LrGoR5doN8", "graphics": "G27myTFvXZtzL3ib", "label": "K65HB1kvxTzPIbAb", "osVersion": "uTLveiyMAtwTuHV3", "processor": "0l96Gj3utSSc6ki9", "ram": "NDkC7ozZvXcgoP97", "soundCard": "NhtR4ysYHzZ7bEKa"}], "q0Vn8ucURe4yxeyk": [{"additionals": "NE0z3keWU8LVJTGF", "directXVersion": "imttRzr09X9HNVzW", "diskSpace": "6zIprsM1zMIkChs9", "graphics": "0yFSnq2CimvHRs20", "label": "srIR6sTkEY4rWbVf", "osVersion": "wSrou4iAjeQfAaCz", "processor": "TzNLtNx845kY3zL6", "ram": "nvzH6zh6Ks762Ygq", "soundCard": "JEnIQ2XAsnrKs2zo"}, {"additionals": "vQzeuLo6BlIE7cul", "directXVersion": "oJBFLolC6fi47UcY", "diskSpace": "B0BM8SjlG26MkbrL", "graphics": "lbfObT22dbOQavvg", "label": "IcDmWPuNf1rWHJG0", "osVersion": "R4oyushy32JoVu6u", "processor": "uU47zC2EMAVOKss5", "ram": "RaqGduasO6Ud1RMI", "soundCard": "PImjMwX83IfdnyKL"}, {"additionals": "MJ8d9owWmja5x1O1", "directXVersion": "4sVoXbCKAwlOWfRd", "diskSpace": "EVVHRTThA8SP8knL", "graphics": "gJz60KfLkCzcqr2i", "label": "Aa2yE1uQOuF0zoQO", "osVersion": "deETlIUal8hGYFi8", "processor": "PK3T13wui13XLtNx", "ram": "nt33iWWFTQFcMA0A", "soundCard": "opTWaIYnWBxx8Yk1"}]}, "platforms": ["Android", "Android", "Windows"], "players": ["LocalCoop", "LocalCoop", "MMO"], "primaryGenre": "RPG", "publisher": "GxSPJi48DSd7FeIh", "releaseDate": "1985-08-30T00:00:00Z", "websiteUrl": "6iF4mW0dfdrmuhLy"}'
"""

result, error = update_app(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
