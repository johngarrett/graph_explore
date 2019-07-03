## Commands
* `graphcool deploy`

## Syntax Quirks
* all field names cannot include `-` or `_`
* graphcool requires all models impliment `@model` and have an IDi
* a relation directive with a name must appear exactly 2 times
* `[User]` is not acceptable, `[User!]!` is
* `@migrationValue` is required when you add a required field to an existing data structure 
* schema must be exported from the playground as `schema.json` each time an update is made to the structure
* > apollo-codegen download-schema My_Simple_API --output schema.json
