###!
Env.js | github.com/danott/env.js
###
propertyNameRegex = /^Env\./

envTags = [].slice.call(document.getElementsByTagName('meta')).filter (tag) ->
  tag.name.match(propertyNameRegex)

env = {}
for tag in envTags
  name = tag.name.replace(propertyNameRegex, '')
  value = tag.content
  try eval("value = #{value}") unless tag.dataset.hasOwnProperty('envNoCoerce')
  env[name] = value

window.Env = env
