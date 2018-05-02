#!/usr/bin/tclsh

# Description
# -----------
# These applications use a modified version of the lwIP library contained in the
# ../EmbeddedSw directory. The original lwIP library can be found here:
# C:\Xilinx\SDK\<version>\data\embeddedsw\ThirdParty\sw_services
# This script will copy the original lwIP library sources into the ../EmbeddedSw directory,
# except for the modified files already contained in that directory. The ../EmbeddedSw
# directory then serves as a remote SDK repository for the software applications.

# Recursive copy function
# Note: Does not overwrite existing files, thus our modified files are untouched.
proc copy-r {{dir .} target_dir} {
  foreach i [lsort [glob -nocomplain -dir $dir *]] {
    # Get the name of the file or directory
    set name [lindex [split $i /] end]
    if {[file type $i] eq {directory}} {
      # If doesn't exist in target, then create it
      set target_subdir ${target_dir}/$name
      if {[file exists $target_subdir] == 0} {
        file mkdir $target_subdir
      }
      # Copy all files contained in this subdirectory
      eval [copy-r $i $target_subdir]
    } else {
      # Copy the file if it doesn't already exist
      if {[file exists ${target_dir}/$name] == 0} {
        file copy $i $target_dir
      }
    }
  }
} ;# RS

# Fill in the local libraries with original sources without overwriting existing code
proc fill_local_libraries {} {
  # Xilinx SDK install directory
  set sdk_dir $::env(XILINX_SDK)
  # For each of the custom lwIP versions in our local repo
  foreach lwip_dir [glob -type d "ThirdParty/sw_services/*"] {
    # Work out the original version library directory name by removing the appended "9"
    set lib_name [string range [lindex [split $lwip_dir /] end] 0 end-1]
    set orig_dir "$sdk_dir/data/embeddedsw/ThirdParty/sw_services/$lib_name"
    puts "Copying files from $orig_dir to $lwip_dir"
    # Copy the original files to local repo, without overwriting existing code
    copy-r $orig_dir $lwip_dir
  }
}

# Copy original lwIP library sources into the local SDK repo
puts "Copying original lwIP library sources into the local repo"
fill_local_libraries

exit
