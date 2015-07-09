package require Tcl 8.6

proc tinyclass {classname args} {
    # create the named class
    oo::class create $classname
    
    # add our attributes(variables) to the class
    oo::define $classname variable -append {*}$args
    
    # define the constructor to handle Tcl-ish named attributes
    oo::define $classname constructor {args} {
        if {[llength $args] && [expr [llength $args] % 2]} {
            puts stderr "incorrect number of arguments"
            [self] destroy
        }
        set opts [dict create {*}$args]
        foreach optk [dict keys $opts] {
            set key [regsub {^-} $optk ""]
            if {[lsearch [info class variables [self class]] $key] == -1} {
                puts stderr "invalid attribute '$optk'"
                [self] destroy
            }
            # set the named instance variable accordingly
            set $key [dict get $opts $optk]
        }
    }
    
    set mblock {
        if {[llength $args]} {
            set %1$s [lindex $args 0]
        }
        return $%1$s
    }
    
    # add get/set method names that correspond to attributes
    foreach mname $args {
        oo::define $classname method $mname {args} [format $mblock $mname]
    }

    return 0
}
