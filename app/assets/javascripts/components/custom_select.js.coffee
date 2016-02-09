BlogApp.CustomSelectComponent = Em.Component.extend
  tagName: 'select'
  optionLabelPath: null
  optionValuePath: null

  collection: (->
    labelPath = @get('optionLabelPath')
    valuePath = @get('optionValuePath')
    @get('content').map (opt) =>
      {
        label: opt.get(labelPath)
        value: opt.get(valuePath)
      }
  ).property('content.@each', 'optionLabelPath', 'optionValuePath')
