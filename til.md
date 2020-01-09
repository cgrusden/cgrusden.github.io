[NodeJS modules](https://nodejs.org/api/modules.html#modules_modules)

1. Modules will be loaded partially to prevent any circular dependencies
1. require() will auto parse any .json extension files. ex: myJson = require("some.json");
1. Modules will only be loaded once
1. exports & module.exports are different. exports is assigned to module.exports on load, re-assign after to exports is module-viewable-only
