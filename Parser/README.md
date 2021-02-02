# Parser test suite

These test cases are used to test if parser is available to parse.

The files with `.invalid` in names should **not** be parsed, and others **should** be parsed correctly.

For readability, the codes are indented with white spaces and newlines, and supporting upper case identifiers. These extensions are not defined in the basic grammar rule.

If the testing parser doesn't support such exextensions, be sure to sanitize by `sanitize.sh` before use.