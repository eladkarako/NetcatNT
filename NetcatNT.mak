# Microsoft Developer Studio Generated NMAKE File, Based on NetcatNT.dsp
!IF "$(CFG)" == ""
CFG=NetcatNT - Win32 Debug
!MESSAGE No configuration specified. Defaulting to NetcatNT - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "NetcatNT - Win32 Release" && "$(CFG)" != "NetcatNT - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "NetcatNT.mak" CFG="NetcatNT - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "NetcatNT - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "NetcatNT - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "NetcatNT - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\NetcatNT.exe"


CLEAN :
	-@erase "$(INTDIR)\doexec.obj"
	-@erase "$(INTDIR)\getopt.obj"
	-@erase "$(INTDIR)\netcat.obj"
	-@erase "$(INTDIR)\Script1.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\NetcatNT.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\NetcatNT.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\Script1.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\NetcatNT.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib  kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\NetcatNT.pdb" /machine:I386 /out:"$(OUTDIR)\NetcatNT.exe" 
LINK32_OBJS= \
	"$(INTDIR)\netcat.obj" \
	"$(INTDIR)\doexec.obj" \
	"$(INTDIR)\getopt.obj" \
	"$(INTDIR)\Script1.res"

"$(OUTDIR)\NetcatNT.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "NetcatNT - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\NetcatNT.exe"


CLEAN :
	-@erase "$(INTDIR)\doexec.obj"
	-@erase "$(INTDIR)\getopt.obj"
	-@erase "$(INTDIR)\netcat.obj"
	-@erase "$(INTDIR)\Script1.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\NetcatNT.exe"
	-@erase "$(OUTDIR)\NetcatNT.ilk"
	-@erase "$(OUTDIR)\NetcatNT.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MLd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\NetcatNT.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ  /c 
RSC_PROJ=/l 0x40d /fo"$(INTDIR)\Script1.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\NetcatNT.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib  kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:yes /pdb:"$(OUTDIR)\NetcatNT.pdb" /debug /machine:I386 /out:"$(OUTDIR)\NetcatNT.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\netcat.obj" \
	"$(INTDIR)\doexec.obj" \
	"$(INTDIR)\getopt.obj" \
	"$(INTDIR)\Script1.res"

"$(OUTDIR)\NetcatNT.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("NetcatNT.dep")
!INCLUDE "NetcatNT.dep"
!ELSE 
!MESSAGE Warning: cannot find "NetcatNT.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "NetcatNT - Win32 Release" || "$(CFG)" == "NetcatNT - Win32 Debug"
SOURCE=.\doexec.c

"$(INTDIR)\doexec.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\getopt.c

"$(INTDIR)\getopt.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\netcat.c

"$(INTDIR)\netcat.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\Script1.rc

"$(INTDIR)\Script1.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)



!ENDIF 

