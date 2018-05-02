Local lwIP libraries
====================

### Description

The echo server application for the MYD-Y7Z010 Development board requires a modified version 
of the lwIP library which is contained in the `EmbeddedSw` directory. The modifications
are required for the correct configuration of the board's Ethernet PHYs (Micrel KSZ9031).
The original lwIP library can be found here: `C:\Xilinx\SDK\<version>\data\embeddedsw\ThirdParty\sw_services`

### How to use

The `EmbeddedSw` directory contains a Tcl script that will copy the original lwIP library sources into 
the `EmbeddedSw` directory, except for the modified files already contained in that directory. 
The `EmbeddedSw` directory can then serve as a remote SDK repository for the software applications in
the SDK workspace. Once the repository has been added to the SDK workspace, any echo server application 
that is generated in the workspace will use the local lwIP library.

For ease of use in Windows, the `EmbeddedSw` directory also contains a batch file (.bat) that can
be run to execute the Tcl script to fill the local libraries.

