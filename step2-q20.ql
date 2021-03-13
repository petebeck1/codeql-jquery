/**
 * @name Cross-site scripting vulnerable plugin
 * @kind path-problem
 * @id js/xss-unsafe-plugin
 */

import javascript
import DataFlow::PathGraph

class Configuration extends TaintTracking::Configuration {
  Configuration() { this = "XssUnsafeJQueryPlugin" }

  override predicate isSource(DataFlow::Node source) { 
    source = jquery()
          .getAPropertyRead("fn")
          .getAPropertySource()
          .(DataFlow::FunctionNode)
          .getLastParameter()
  } 
  
  override predicate isSink(DataFlow::Node sink) { 
	exists(JQuery::MethodCall call | call.interpretsArgumentAsHtml(sink))
  } 
}

from Configuration cfg, DataFlow::PathNode source, DataFlow::PathNode sink
where cfg.hasFlowPath(source, sink)
select sink.getNode(), source, sink, "Potential XSS vulnerability in plugin."
