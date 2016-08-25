# Enable transparent server-side requiring of cjsx files.
require('node-cjsx').transform()

# The strategy here is the following:
# 1. render the .template file into the webapp-lib folder
# 2. during the "webpack" step, copy over the policies/*.html files
# to the target directory (see CopyFilesToTargetPlugin)

# Code for static server-side rendering of the subscription options.
exports.render_subscriptions = ->
    ReactDOMServer = require('react-dom/server')
    fs = require('fs')
    filename = '../webapp-lib/policies/_static_pricing_page.html'
    fs.writeFileSync(filename)
