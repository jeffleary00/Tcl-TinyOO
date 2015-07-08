# Tcl-TinyOO
A simple TclOO basic Class scaffolding procedure. For when you need dead-simple classes with basic attributes, and don't want to build any Methods. Saves a lot of typing!

Inspired by the Object::Tiny module in the Perl world.


# USAGE and TESTING
source tinyclass.tcl

# define a named class, and provide some attribute names.
# Usage: tinyclass ClassName ?attributes...?
tinyclass Widget model color

# create a new Widget object, with Tcl-ish attributes
set o [Widget new -model 13A -color blue]
::oo::Obj12

# what happens when invalid attributes are specified?
Widget new -shape cylinder
invalid attribute '-shape'
object deleted in constructor

# check if attributes were set properly at build time
puts $::oo::Obj12::model
13A

# use our attribute SET method
puts [$o model 14A]
14A

# use our attribute GET method
puts [$o model]
14A
