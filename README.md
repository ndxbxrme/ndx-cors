# ndx-cors
### adds cors support to your [ndx-framework](https://github.com/ndxbxrme/ndx-framework) apps
install with  
`npm install --save ndx-cors`  
## what it does
ndx-cors provides the correct headers for cross origin resource sharing to all `/api` and `/auth` routes
## example
make sure you `.use` ndx-cors before everything else  

`src/server/app.coffee`
```coffeescript
require 'ndx-server'
.config
  database: 'db'
.use 'ndx-cors'
.start()
```