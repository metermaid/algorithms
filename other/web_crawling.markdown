# Design how to use 1000 bots to crawl wikipedia with some restrictions

greedy traversing!

crawler algo, unvisited url list, list of visited urls (and a cached version => hash fn to see if it’s in there)

1. Remove a URL from the unvisited URL list
2. Determine the IP Address of its host name
3. Download the corresponding document
4. Extract any links contained in it.
5. If the URL is new, (hash) add it to the list of unvisited URLs
6. Process the downloaded document

http://stackoverflow.com/questions/5834808/designing-a-web-crawler

http://flexaired.blogspot.ca/2011/09/design-web-crawler.html