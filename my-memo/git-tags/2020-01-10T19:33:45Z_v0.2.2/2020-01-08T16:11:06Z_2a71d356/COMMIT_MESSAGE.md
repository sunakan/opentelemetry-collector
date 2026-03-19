commit 2a71d356914ca80391f55ba90fed92df2cf6c8fc
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Wed Jan 8 21:41:06 2020 +0530

    Allow supplying a custom HTTP server to the Zipkin receiver (#473)
    
    This allows other to import and extend the zipkin receiver for different
    use cases. For example, people can now wrap the server handler and add
    HTTP middlewares to it.
