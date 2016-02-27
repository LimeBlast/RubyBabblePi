# BabblePi in Ruby (which a little bit of Python magic)

This project uses a Raspberry Pi to display mentions sent to the @BabblePi twitter account
across the dot matrix LED display of the UnicornHAT.

Because I've been unable to make the UnicornHAT work via ruby, that part is deligated to
the python code I found in the Raspberry Pi Projects book.

## Getting started

To run this project, simple clone the repo on a Raspberry Pi with an attached UnicornHAT,
add a `.env` file with your Twitter API keys, tokens, and screen name, and run:

    $ ./stream.rb

This will use the real time stream provided by Twitter to watch for mentions of the
selected account, and display them across the face of the UnicornHAT.

## To do

I'm sure there are lots of things which can be improved on this, but here are a few which
spring to mind:

- Power the UnicornHAT in Ruby
- Use Redis as a messaging service between systems
- Make it work on boot
