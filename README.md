vim-lisa v0.2 beta: LISA+ syntax highlighting
=============================================
Syntax highlighting for Language for Instruction Set Architecture (LISA+). The
plugin highlights most of the major keywords in LISA. Since LISA+ allows C/C++
syntax within its sections, the cpp.vim syntax file is loaded as well and applies
to the entire file.

Features
--------
* Syntax highlighting .lisa extensions
* Reserved keywords are highlighted
* LISA+ Macros like REGISTER, MEMORY, PARAMETER are highlighted
* Above macro attributes like name, description, type etc. are highlighted
* Reserved function names like init, terminate, reset are highlighted
* All C++ syntax is highlighted appropriately

Installation
------------
### Installation using Zip Archives
Extract the plug-in and then copy the contents of the vim-lisa directory into your
.vim folder.

### Installation using a plug-in manager
If you are a sane person and use a plug-in manager like Pathogen, simply copy and
paste the vim-lisa directory inside the bundle folder. Use the appropriate method
for your plug-in manager of choice like Vundle, vim-plug etc.

TODO
----
* Add default auto-indentation for LISA files
* Fix any quirks with various colorschemes as reported
* Add any missing keywords
* Drink beer and be happy!
