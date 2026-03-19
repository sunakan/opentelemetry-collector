commit 32278ed2ed085187706bbef4ba63f046840c7f32
Author: Daniel Gomez Blanco <dgomezblanco@newrelic.com>
Date:   Mon Jun 30 09:40:15 2025 +0100

    Add subscript to issue templates (#13193)
    
    #### Description
    As part of https://github.com/open-telemetry/sig-end-user/issues/11,
    this adds a subscript paragraph to all issue templates to help end-users
    and other community members interact with issues.
    
    This change is accompanied by the changes in the maintainer guide
    proposed in https://github.com/open-telemetry/community/pull/2778, and
    the changes to the website in
    https://github.com/open-telemetry/opentelemetry.io/pull/7088 giving
    users more information about issue participation
    
    The major caveat of this PR is the necessity of using the `dropdown`
    element in issue forms. As covered in this [feedback discussion
    topic](https://github.com/orgs/community/discussions/63402#discussioncomment-10341167),
    it is not possible to create `markdown` elements that render on the
    resulting issue body. As such, the only possibilities are a checkbox, a
    dropdown, or some form of pre-filled input text that would be even more
    confusing.
    
    Working version can be seen in
    https://github.com/danielgblanco/opentelemetry-collector-contrib/issues/6
    with the issue form being rendered as
    https://github.com/danielgblanco/opentelemetry-collector-contrib/issues/new?template=bug_report.yaml
