import javascript

from CallExpr dollarCall, Expr dollarArg, PropAccess optionsObject, PropAccess option
where dollarCall.getCalleeName() = "$" and // TODO reuse the answer from Warmup step 0
  dollarArg = dollarCall.getArgument(0) and // TODO reuse the answer from Warmup step 0
  optionsObject.getPropertyName() = "options" and // TODO reuse the answer from Warmup step 1
  option.getBase() = optionsObject and // TODO reuse the answer from Warmup step 1
  dollarArg = option  // TODO replace `_` with an appropriate variable
select dollarArg, "Using a jQuery plugin option as the argument to '$' may result in a cross-site scripting vulnerability."
