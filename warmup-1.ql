import javascript

from PropAccess optionsObject, PropAccess option
where
  optionsObject.getPropertyName() = "options" and // TODO replace `_` with an appropriate string
  option.getBase() = optionsObject // TODO replace `_` with an appropriate variable
select option, "This looks like a jQuery plugin option."
