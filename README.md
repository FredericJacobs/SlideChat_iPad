SlideChat for iPad 
==================


# Context

[Box](https://www.box.com/) organized a hackathon in mid-august 2012 and we wanted to be part of it. The theme was productivity. We build a great solution to enable people to discuss documents while chatting to each other face to face.

The project didn't get any prize but we had fun building it. 

The project has two main components, a web app and an iPad app. Both allow to browse box folders while video-chatting.

Thanks again to Box for hosting this great hackathon.

# APIs 

We are using two APIs, so you should get an API key for those : 

- [The Awesome OpenTok](http://www.tokbox.com/opentok/api/documentation)
- [The Box API](http://developers.box.com/)

The project will not build without those anyway.

This app is a great example of how OpenTok chat streams can be resized dynamically depending on the amount of people in the chat room. This app supports up to 5 people in a discussion. And I gotta say, the transitions are pretty smooth, I'm impressed.

*Note that the OpenTok Framework require to run the application on a real device and not in the simulator*

# Building it

Fill the API keys, have a SDK version with a base SDK around 5.X and auto-create schemes. You're now ready to have fun !

# Contributors 

- [Arnaud Bénard](https://twitter.com/arnaudbenard) 
- [Frederic Jacobs](http://twitter.com/frederic.jacobs)

# License 
SlideChat is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

SlideChat Source Code is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the [GNU General Public License](http://www.gnu.org/licenses/) for more details.

Only Apple's Keynote Logo and Facetime lens are copyrighted materials owned by Apple Inc. 