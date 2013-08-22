# Twitter Bootstrap for Adobe CQ / AEM

This task installs the latest Twitter Bootstrap frontend library as cq client library. It uses the grunt task runner and the grunt-sling-content plugin
from https://github.com/francescomari/grunt-sling-content

## Installation Requirement
- Running CQ instance
- NodeJS with node package manager  https://npmjs.org

## Installation

1. Edit the constants in `Gruntfile.coffe` for your local CQ environment
2. Install `grunt-cli` globally with `npm install -g grunt-cli`.
3. Install the [necessary local dependencies](package.json) via `npm install`
4. Run `grunt`

## Test
Call sample page under http://YOUR-CQ-HOSTNAME:AND-PORT/libs/bootstrap/content/example.html

## Using

```jsp
<html lang="en">
  <head>
    <cq:includeClientLib css="bootstrap" />
    <title>Bootstrap Example</title>
  </head>
  <body>
  <div class="container">
....
  </div>
  <cq:includeClientLib js="bootstrap" />
  </body>
</html>
```

## Authors

**Burkhard Pauli**

+ [http://twitter.com/bupauli](https://twitter.com/bupauli)

## Copyright and license

Copyright 2013 Burkhard Pauli under [the Apache 2.0 license](LICENSE).