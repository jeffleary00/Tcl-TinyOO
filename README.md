# Tcl-TinyOO
A simple TclOO basic Class scaffolding procedure. For when you need dead-simple classes with basic attributes, and don't want to build any Methods. Saves a lot of typing!

Inspired by the Object::Tiny module in the Perl world.

# Requirements
Tcl 8.6

# USAGE and TESTING

<code>
  source tinyclass.tcl
</code>

# Define a named class, and provide some attribute names.
<i>Usage: tinyclass ClassName ?attributes...?</i>

<code>
  tinyclass Widget model color
</code>

# Create a new Widget object, with Tcl-ish attributes.

<code>
  set o [Widget new -model 13A -color blue]
  ::oo::Obj12
</code>

# What happens when invalid attributes are specified?

<code>
  Widget new -shape cylinder
  invalid attribute '-shape'
  object deleted in constructor
</code>

# Check if attributes were set properly at build time

<code>
  puts $::oo::Obj12::model
  13A
</code>

# Use our attribute SET method

<code>
  puts [$o model 14A]
  14A
</code>

# Use our attribute GET method

<code>
  puts [$o model]
  14A
</code>
