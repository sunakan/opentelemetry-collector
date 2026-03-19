commit fb09004bcf433b622ae9b493af2b87d1a6e8255b
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Jan 28 12:11:15 2020 -0800

    Add support to extract attributes and rename span (#519)
    
    This adds "to_attributes" functionality that complements already
    existing "from_attributes" functionality. This is very useful for
    extracting attributes from span names and reducing cardinality of
    span names.
    
    For usage and examples see rocessor/spanprocessor/config.go and
    processor/spanprocessor/testdata/config.yaml.
    
    Testing: unit tests added.
    Documentation: see readme.md, config.go and config.yaml
