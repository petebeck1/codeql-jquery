import javascript

from CallExpr dollarCall, Expr dollarArg, PropAccess optionsObject, PropAccess option
where
  dollarCall.getCalleeName() = "$" and // TODO reuse the answer from Warmup step 2
  dollarArg = dollarCall.getArgument(0) and // TODO reuse the answer from Warmup step 2
  optionsObject.getPropertyName() = "options" and // TODO reuse the answer from Warmup step 2
  option.getBase() = optionsObject and // TODO reuse the answer from Warmup step 2
  dollarArg.flow().getALocalSource().asExpr() = option // TODO reuse the answer from Warmup step 2 for the right-hand side of the equality
select dollarArg, "Using a jQuery plugin option as the argument to '$' may result in a cross-site scripting vulnerability."
