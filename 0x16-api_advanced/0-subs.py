#!/usr/bin/python3
"""
This module contains a function that queries the Reddit API to fetch
the total number of subscribers for a given subreddit.

If the subreddit is invalid or does not exist, the function return 0.
"""


from requests import get


def number_of_subscribers(subreddit):
    """
    Fethes the total number of subscribers for a given subreddit
    """
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) "
            "Gecko/20100101 Firefox/124.0"
            )
    }

    response = get(
        url,
        headers=headers,
        allow_redirects=False,
        timeout=10
    )

    if response.status_code == 404:
        return 0
        
    return response.json()["data"]["subscribers"]

