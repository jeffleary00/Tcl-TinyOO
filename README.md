# Tcl-TinyOO
A simple TclOO basic Class scaffolding procedure. For when you need dead-simple classes with basic attributes, and don't want to build any Methods. Saves a lot of typing!

Inspired by the Object::Tiny module in the Perl world.


USAGE and TESTING

  tclsh> source tinyclass.tcl

Define a named class, and provide some attribute names.
Usage: tinyclass ClassName ?attributes...?

  tclsh> tinyclass Widget model color

Create a new Widget object, with Tcl-ish attributes

  tclsh> set o [Widget new -model 13A -color blue]
  ::oo::Obj12

What happens when invalid attributes are specified?

  tclsh> Widget new -shape cylinder
  invalid attribute '-shape'
  object deleted in constructor

Check if attributes were set properly at build time
  tclsh> puts $::oo::Obj12::model
13A

Use our attribute SET method
  tclsh> puts [$o model 14A]
  14A

Use our attribute GET method
  tclsh> puts [$o model]
  14A
