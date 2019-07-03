### General
* the model is defined within the server folder [here](https://github.com/johngarrett/graph_explore/blob/master/server/types.graphql)
* `graphcool deploy` updates the server with any changes made to the models
* some syntax is graphcool specific. if that's the case, a comment should be left
* [`GraphAPI.swift`](https://github.com/johngarrett/graph_explore/blob/master/graphScratch/graphScratch/GraphAPI.swift) is how the client side app interfaces with the server
* most other networking files within the iOS codebase are autogenerated by the apollo build script

### Exploring
* see [sample-queries.md](https://github.com/johngarrett/graph_explore/blob/master/sample-queries.md)
* see [general notes](https://github.com/johngarrett/graph_explore/blob/master/graph-notes.md) about graphql and graphcool

here's a preliminary sketch of the database layout:
![sketch](https://media.discordapp.net/attachments/439973413797494793/595324250831847448/Letter.png?width=1042&height=481)