## Modules as Namespaces
# moudles can just be used to group things under a separate name, so that they
# don't clash with other things in the same scope.

def hello
  puts "Hello from the global scope"
end

module AModule

  extend self

  def hello
    puts "Hello from ModuleA"
  end

  def bye
    puts "Bye from ModuleA"
  end

  private def private_method
    puts "This is a private method"
  end
end

# Now the hello methods don't clash
hello
AModule.hello

# Ofcourse we can bring the AModule.hello method into the global scope
include AModule
bye

AModule.private_method

#### ACCESSIBILITY ####
require "./module_a"

# methods in the modules public by default
#  ModuleA.hello

# the can be made private
# ModuleA.private_method

#### SUBMODULES ####
require "./module_a/submodule_a"


## Sub modules are accessed using the `::` operator
ModuleA::SubmoduleA.hello