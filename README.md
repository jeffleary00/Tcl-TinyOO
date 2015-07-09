# Tcl TinyClass
A simple TclOO basic Class scaffolding procedure. For when you need dead-simple classes with basic attributes, and don't want to build any Methods. Saves a lot of typing!

Inspired by the Object::Tiny module in the Perl world.

# Requirements
Tcl 8.6

# USAGE and TESTING

<pre>
  source tinyclass.tcl
</pre>

# Define a named class, and provide some attribute names.
<i>Usage: tinyclass ClassName ?attributes...?</i>

<pre>
  tinyclass Widget model color
</pre>

# Create a new Widget object, with Tcl-ish attributes.

<pre>
  set o [Widget new -model 13A -color blue]
  ::oo::Obj12
</pre>

# What happens when invalid attributes are specified?

<pre>
  Widget new -shape cylinder
  invalid attribute '-shape'
  object deleted in constructor
</pre>

# Check if attributes were set properly at build time

<pre>
  puts $::oo::Obj12::model
  13A
</pre>

# Use our attribute SET method

<pre>
  puts [$o model 14A]
  14A
</pre>

# Use our attribute GET method

<pre>
  puts [$o model]
  14A
</pre>
