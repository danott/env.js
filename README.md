# Set an environment from html meta tags.

Usage:

```html
<meta name="Env.station" content="swan" />
<meta name="Env.port" content="2342" />
```

The above meta tags would yield the following object:

```js
Env = {'station': 'swan', 'port': 2342}
```

Notice how the type is coerced where applicable. If you have a meta tag that
you don't want to coerce, you can opt out with:

```html
<meta name="Env.rawPort" content="2342" data-env-no-coerce />
```

This would result in:

```js
Env = {'rawPort': '2342'}
```

That's it!
