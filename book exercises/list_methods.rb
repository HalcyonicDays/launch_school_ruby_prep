# A shortcut for getting a sorted list of a given object's methods.
# Can be accessed via list_methods.call(some_object)
list_methods = lambda {|obj| 
  obj.methods.sort.each {|meth| puts meth}; 
return nil}

# This one is in-progress.  I'm trying something out,
# but this doesn't feel like the right approach...
personal_methods = lambda(bool=false) {|klass| 
  klass.instance_methods(bool).sort.each {|meth| puts meth}; 
return nil}