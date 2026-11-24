# API Summary

## What is a REST API?
A REST API is a way for two programs to talk over the internet. One program sends a request to a web address (URL), and the other sends back data, usually in JSON format. It uses simple methods like GET to fetch data.

## HTTP status codes observed
- **200**: The request worked and the data was returned (my GitHub profile).
- **404**: The thing I asked for was not found (a user that does not exist).

## jq filter used

    jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'

- The curly braces { } build a new small object with only the fields I want.
- name:.name takes the profile's name field and calls it name.
- repos:.public_repos takes the number of public repositories.
- followers:.followers takes the follower count.
- joined:.created_at takes the date the account was created.
