This is an app for deploying nginx serving just some part of the landing site built by Middleman. 

Right now it just does docs, but with a tweak to the `copy.sh` file you could target any blog or the whole static site.

1. You build landing with Middleman. 
2. `copy.sh` brings over all the files needed to serve just docs from the build output. Change that to serve something else.
3. Ready to `fly deploy`

### Notes

I have added the redirects map but haven't tested it (`redirect_from` in the frontmatter actually redirects). In general, we shouldn't need those redirects--our internal links should be consistent. But they keep old urls working and are a backup in case we forget to change an internal link.

Logs will show 404s for some resources -- not to worry.

There's this in the layouts for landing:
```
    <script defer data-domain="fly.io" src="/js/events.js"></script>
```

This is routed by ui-ex (endpoint.ex) and points to a script hosted by Plausible.io for site metrics, so I can't do much with it.
