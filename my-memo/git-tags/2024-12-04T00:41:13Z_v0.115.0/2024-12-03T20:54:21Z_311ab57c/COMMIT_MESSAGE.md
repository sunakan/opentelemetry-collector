commit 311ab57c197a6a335add21752ef08759baecdf74
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Tue Dec 3 12:54:21 2024 -0800

    [chore] disable generate for now (#11794)
    
    This is a partial revert of
    https://github.com/open-telemetry/opentelemetry-collector/pull/11670 as
    it is currently blocking the release due to the need to run go mod tidy
    multiple times.
    
    I'm still investigating why tidy is needed multiple times, but for now
    I'm disabling the generate step, which was not run before and is
    currently blocking the release process
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
