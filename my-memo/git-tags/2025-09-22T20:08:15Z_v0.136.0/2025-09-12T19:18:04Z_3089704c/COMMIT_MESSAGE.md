commit 3089704c8a3645e252c81f4cd17d4c81a2128e2b
Author: Damien Mathieu <42@dmathieu.com>
Date:   Fri Sep 12 21:18:04 2025 +0200

    Remove built pdatagen before regenerating pdata (#13828)
    
    The pdata definitions are now stored directly within pdatagen. So if we
    rely on the cached pdatagen binary, updates in the files will never be
    rebuilt.
    
    This wasn't an issue before
    https://github.com/open-telemetry/opentelemetry-collector/pull/13398, as
    we used `go run` rather than a tool.
