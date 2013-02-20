# Model Subscription From JS Layer To Backend Models
Geddy makes subscribing to model changes easy using Socket.io

## Prerequisites
1. [Node.js/NPM](http://nodejs.org)
2. [Geddy with SWIG templating](https://github.com/cpbtechnology/geddy/tree/feature-swig-templating-support) ~~[Geddy](http://geddyjs.org/)~~

## Running the app
1. Start the server with ```geddy```
2. Open one tab to: http://localhost:4000 with the console open
3. Open another tab to: http://localhost:4000/posts
4. Create a new 'post'
5. Go back to the other tab and check out the console.  You'll see that it was notified of the new 'post'.  There are also events for when a 'post' is updated or removed.

## Files changed after app creation and scaffolding

```/package.json``` Added socket.io to packages dependencies

```/app/views/layouts/layout.swig``` Added a script tag for models

```/public/models.js``` Subscribed to socket.io events

## Steps to set up the app

Create the app

```
geddy app --swig -rt frontend-to-backend-model-subscription
```

Create the 'post' model

```
geddy scaffold --swig post title:string body:string
```

Add socket.io support to package.json

```
{
  "name": "frontend-to-backend-model-subscription",
  "version": "0.0.1",
  "author": "",
  "dependencies": {
    "swig": "*",
    "socket.io": "*"
  },
  "devDependencies": {},
  "engines": {
    "node": "0.8.x"
  }
}
```

You should see that a front-end model was also added...you need to include it in your html

```
<script type="text/javascript" src="/js/core/models.js"></script>
```

