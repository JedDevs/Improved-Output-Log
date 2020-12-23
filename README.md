# Improved-Output-Log
Improving Output Log functionality

One of the Major bugbears i’ve come to live with working on large projects are the painful to read outputs you often get that make it hard to find what you’re looking for - especially when you’re in a team and not all using the same formatting etc. To address this nagging issue i’ve built a simple, open source module that:

    Converts all print and warn statements to use the same formatting.
    Adds the system name (script name)/custom name + environment (client/server) to output.
    Customizable output template.
    Supports warn(), print() and error().

In action this module looks like:

![Example GIF](https://doy2mn9upadnk.cloudfront.net/uploads/default/original/4X/4/a/1/4a1891336ebaaa0f3dd0dff71b9cf512dc4acec1.gif)
