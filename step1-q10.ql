import javascript

from VarAccess dollar, PropAccess fn, PropAccess write, Assignment assign
where
  dollar.getName() = "$" and
  fn.accesses(dollar, "fn") and
  write.getBase() = fn and
  assign.getLhs() = write
select write, assign.getRhs()
