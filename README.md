# jsbin

Docker jsbin image

## running

docker run -d -p 3000:3000 euprogramador/jsbin


generate configuration for https://github.com/jsbin/jsbin/blob/master/docs/running-your-own-jsbin.md#configuration and bind JSBIN_CONFIG enviroment variable for container

- create a custom config.
- running container a custom config.

docker run -d -p 3000:3000 -v $(pwd)/data:/data -v $(pwd)/jsbin.json:/jsbin.json -e JSBIN_CONFIG=/jsbin.json euprogramador/jsbin


## access

open your browser http://localhost:3000/


## example custom config base


<code type="json">
{
  "env": "development",
  "timezone": "UTC",
  "url": {
    "host": "localhost:3000",
    "prefix": "/",
    "ssl": false,
    "static": false,
    "runner": false
  },
  "max-request-size": "1MB",
  "store": {
    "adapter": "sqlite",
    "sqlite": {
      "location": "jsbin.sqlite"
    },
    "mysql": {
      "host": "localhost",
      "user": "root",
      "password": "",
      "database": "jsbin",
      "charset": "utf8mb4",
      "collate": "utf8mb4_unicode_ci"
    }
  },
  "analytics": {
    "id": null,
    "render-id": null
  },
  "ui": {},
  "mail": {
    "adapter": "sendmail",
    "sendmail": {},
    "smtp": {
      "service": "Gmail",
      "auth": {
          "user": "",
          "pass": ""
      }
    }
  },
  "server": {
    "logger": "default"
  },
  "client": {
    "user": true
  },
  "github": {
    "id": "",
    "secret": ""
  },
  "notify": {
    "errors": [],
    "report": []
  },
  "api": {
    "allowAnonymousReadWrite": false,
    "allowAnonymousRead": true,
    "requireSSL": false
  },
  "blacklist": {
    "html": ["processform.cgi", "habbo.com"],
    "css": [],
    "javascript": []
  },
  "reserved": [
    "donate",
    "list",
    "show",
    "gist",
    "about",
    "account",
    "accounts",
    "activity",
    "all",
    "announcements",
    "api",
    "api_rules",
    "api_terms",
    "apirules",
    "apps",
    "archive",
    "auth",
    "badges",
    "bin",
    "bins",
    "blog",
    "bugs",
    "business",
    "contacts",
    "collection",
    "collections",
    "css",
    "delete",
    "devices",
    "download",
    "downloads",
    "faq",
    "favorites",
    "favs",
    "find_sources",
    "find_users",
    "followers",
    "following",
    "fonts",
    "font",
    "friend_request",
    "friendrequest",
    "friends",
    "goodies",
    "help",
    "home",
    "hooks",
    "images",
    "img",
    "inbox",
    "invitations",
    "invite",
    "issues",
    "jobs",
    "js",
    "last",
    "login",
    "logout",
    "me",
    "messages",
    "new",
    "notifications",
    "nudge",
    "null",
    "open",
    "oauth",
    "pro",
    "profile",
    "privacy",
    "rules",
    "runner",
    "scripts",
    "search",
    "sent",
    "settings",
    "share",
    "signup",
    "signin",
    "static",
    "statistics",
    "terms",
    "test",
    "tos",
    "translate",
    "trends",
    "unarchive",
    "user",
    "users",
    "widgets",
    "tutorials",
    "video",
    "videos",
    "-"
  ]
}
</code>






