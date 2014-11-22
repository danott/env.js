# Env.js

Env.js is a small utility for setting 'environment' variables from html meta
tags.

## Building

```bash
npm install   # install dev dependencies
npm run build # build src into dist
```

## Usage


```html
<meta name="Env.station" content="swan" />
<meta name="Env.port" content="2342" />
<script src="env.js"></script>
```

The above meta tags would define the following object:

```js
Env = {'station': 'swan', 'port': 2342}
```

Notice how the number type is coerced where applicable. If you have a meta tag
that you don't want to coerce, you can opt out with a data attribute:

```html
<meta name="Env.station" content="swan" />
<meta name="Env.port" content="2342" data-env-no-coerce />
<script src="env.js"></script>
```

This would result in:

```js
Env = {'station': 'swan': 'port': '2342'}
```

That's it!
