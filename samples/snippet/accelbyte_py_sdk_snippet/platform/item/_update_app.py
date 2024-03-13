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

Example: '{"carousel": [{"alt": "gXsBiK0yDLLqCk4N", "previewUrl": "3Rk8ImwEZxqobRbm", "thumbnailUrl": "gBe0XJk0oMwp1Dgi", "type": "video", "url": "MNUogzGUYPdr4Em7", "videoSource": "vimeo"}, {"alt": "lovGa9tNLMPdljhV", "previewUrl": "9o7tCNiRyfps1rWQ", "thumbnailUrl": "H5RLmSr3YUtkNIpP", "type": "image", "url": "I7OL2bA6kcA9Jugf", "videoSource": "youtube"}, {"alt": "Fx4EWrVWqEaO8T0r", "previewUrl": "5cLJsaxsnVFFMxFB", "thumbnailUrl": "wYGTEMofbdogvp7t", "type": "image", "url": "MPy0FCSbswogipjn", "videoSource": "youtube"}], "developer": "3Pss2MuqIUvZzS5R", "forumUrl": "ojvLp1r9cOHigOTh", "genres": ["FreeToPlay", "MassivelyMultiplayer", "Action"], "localizations": {"fGZxCFpG96PUwFd1": {"announcement": "UuaffAXxHfHISA7H", "slogan": "t7xmSrhVvWkXo1b5"}, "vH9QTPgWznJIaOdL": {"announcement": "sJ1aMJYAWWi0Vh4Q", "slogan": "LmiqiZF0KlrEpkcA"}, "OFGU1g7bFUMpx4S6": {"announcement": "kOd8lwzmfuJ3ogkT", "slogan": "dwszGddKnmzgO92H"}}, "platformRequirements": {"D4srQzIdHsO8des9": [{"additionals": "RmTdqVzGWUaOuSf0", "directXVersion": "NwFFGOwrKMT4vefg", "diskSpace": "MsU9IOPJVDK7DMxH", "graphics": "aL34ktbu7vx7LkHJ", "label": "wEUekLcDC4wasw2L", "osVersion": "a01FCHPDlEIAVlKs", "processor": "Tt6f2haWyqwYteeT", "ram": "QCidBd2zoGE97kk7", "soundCard": "dwaRtq1Hvddfvnnc"}, {"additionals": "ajSdFPttvOkUumRu", "directXVersion": "6cMadFILjz7XHqRj", "diskSpace": "newyCh89RJPhAPri", "graphics": "RuNbCJm1rJUjLq6j", "label": "5mYBeHyYDbqljIU6", "osVersion": "XreyJ4u2AsKGXsUY", "processor": "yC3QlGz2sfRmYIpL", "ram": "46Z4wZPqRBKmd12j", "soundCard": "qkngCckrHtPIOCN7"}, {"additionals": "dmLFuo6vFKNU3NSG", "directXVersion": "kVOmRY6fshcU2sw8", "diskSpace": "Gqn6kWsV4mWnhB74", "graphics": "WRTFUoz0hFh2K5GO", "label": "zELtuIWdD7rMni0H", "osVersion": "8O43wdzRFzuA47SC", "processor": "L5RsMVk9iOR3jT7B", "ram": "ium2aFjudIpwH2c1", "soundCard": "pcSkI4kZMxhf67Cz"}], "fXtsfEVHcKl3RfYI": [{"additionals": "pg3w8LbDyKnJE8IJ", "directXVersion": "WfMa8QvI0xDtiCt1", "diskSpace": "qFqi1RzvVhSRnpvR", "graphics": "ATtBnHjrPI9wHUCo", "label": "cGskXDngqGWYG1Xz", "osVersion": "YTCFxbHFEdGREc2z", "processor": "L2gQq0lYWNPpOw1r", "ram": "XHWHLXD4gHbfldvY", "soundCard": "U9xVXTiSv2yRyFsC"}, {"additionals": "50dxocn4Pw2l8Ulu", "directXVersion": "Pw37FWkIfJDWh3J4", "diskSpace": "JW8nrax23j3bNf3m", "graphics": "5v4fzvh1DqGV6rd9", "label": "UpPS37sLx86z08ac", "osVersion": "2F9FYHXTFvjghULp", "processor": "4VFEGoJgtVqBVXWV", "ram": "gOInGvCU95aWiwl6", "soundCard": "tXxVWky8Li6QE7l4"}, {"additionals": "2QGIsUfJd5CP7CqJ", "directXVersion": "1cEf4sset3eHghhX", "diskSpace": "emZsAz9oEZicMeqt", "graphics": "YuL9dpZj3NZFbAHN", "label": "iDQQ2sovd8U6OYeY", "osVersion": "h5zAk9Uc6epvOraO", "processor": "wBwseFYM5Y2bPZbF", "ram": "d1pN8z1O9opPVirv", "soundCard": "0earwX9zqst1231N"}], "4CkK24SZYO14eTtJ": [{"additionals": "ewFkllhvY11EllU3", "directXVersion": "o4MZhdQjL7iVvm25", "diskSpace": "P7WQ5oVV0SScK63Q", "graphics": "eNvg3P5zlJJqZxwQ", "label": "5N1wAUPaq62vpoB9", "osVersion": "Q5cPeB0gtXu8sFMz", "processor": "2e9SlUkjCxzrUs8u", "ram": "D0gZuKC36tKg8C4X", "soundCard": "Hi9VDJJ2sC7rEBTi"}, {"additionals": "6E7hD4x6LQVftt7f", "directXVersion": "cswMHGBT8zt1sP0U", "diskSpace": "4QyRDsyX5f5LuNmz", "graphics": "9CseB9KctA0901pD", "label": "3veYGIs6DqNvpAL0", "osVersion": "wWj5AUo5KvbFoNPE", "processor": "zUWoD49Cx36Us6P5", "ram": "kaMSbbEpvginBm68", "soundCard": "hUFHfgoyJzaD8doN"}, {"additionals": "HkFMA0xuALNWNYZK", "directXVersion": "3zgozTxTai569EmC", "diskSpace": "AXxFjDMTQIUYkdNk", "graphics": "Oq9S6XLZw0kEdrMh", "label": "Ikw0eVkQ3vGbx5LT", "osVersion": "FyhQP68Gqb3u5DN1", "processor": "fvw2xEj7UhN7GfWF", "ram": "iPNPJwPrvwDE91rx", "soundCard": "9gl2LK1nKH2etgmf"}]}, "platforms": ["Linux", "MacOS", "IOS"], "players": ["LocalCoop", "Coop", "MMO"], "primaryGenre": "Casual", "publisher": "763qDk7K81PLYN7Z", "releaseDate": "1978-06-10T00:00:00Z", "websiteUrl": "MXXFNnX3DqXDVPKu"}'
"""

result, error = update_app(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
