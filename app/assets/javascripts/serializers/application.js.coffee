BlogApp.ApplicationSerializer = DS.RESTSerializer.extend
  normalize: (type, hash, property) ->
    json = {}
    for prop of hash
      if prop.includes("_id")
        name = prop.replace('_id', '')
        json[name] = hash[prop]
        json[prop] = hash[prop]
      else
        json[prop] = hash[prop]

    this._super(type, json, property)
