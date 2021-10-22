#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc.exe
CCC=g++.exe
CXX=g++.exe
FC=
AS=as.exe

# Macros
CND_PLATFORM=Cygwin-Windows
CND_CONF=Debug__Cygwin_
CND_DISTDIR=dist

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=build/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/configIO.o

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-Debug__Cygwin_.mk dist/Debug__Cygwin_/Cygwin-Windows/libinifiler.a

dist/Debug__Cygwin_/Cygwin-Windows/libinifiler.a: ${OBJECTFILES}
	${MKDIR} -p dist/Debug__Cygwin_/Cygwin-Windows
	${RM} dist/Debug__Cygwin_/Cygwin-Windows/libinifiler.a
	${AR} rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libinifiler.a ${OBJECTFILES} 
	$(RANLIB) dist/Debug__Cygwin_/Cygwin-Windows/libinifiler.a

${OBJECTDIR}/configIO.o: nbproject/Makefile-${CND_CONF}.mk configIO.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.c) -g -I../../Development/SimpleSockets/sskts -I. -MMD -MP -MF $@.d -o ${OBJECTDIR}/configIO.o configIO.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Debug__Cygwin_
	${RM} dist/Debug__Cygwin_/Cygwin-Windows/libinifiler.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
