import javascript

from CallExpr dollarCall, Expr dollarArg
where
  dollarCall.getCalleeName() = "$" and // TODO replace `_` with an appropriate string
  dollarArg = dollarCall.getArgument(0) // TODO replace `_` with an appropriate number
select dollarArg, "This looks like the first argument to the jQuery '$'-function."
