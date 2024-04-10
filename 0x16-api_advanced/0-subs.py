#!/usr/bin/python3
"""
This module contains a function that queries the Reddit API to fetch
the total number of subscribers for a given subreddit.

If the subreddit is invalid or does not exist, the function return 0.
"""
import requests


def number_of_subscribers(subreddit):
    """
    Fethes the total number of subscribers for a given subreddit
    """
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
        "User-Agent": (
            "python:my_subscriber_counter:v1.0 "
            "(by /u/Mohannad_abdo21)"
        )
    }
    try:
        response = requests.get(
                url,
                headers=headers,
                allow_redirects=False,
                timeout=10
                )
        response.raise_for_status()
    except requests.exceptions.HTTPError as errh:
        return 0
    except requests.exceptions.ConnectionError as errc:
        return 0
    except requests.exceptions.Timeout as errt:
        return 0
    except requests.exceptions.RequestException as err:
        return 0

    return response.json()["data"]["subscribers"]
